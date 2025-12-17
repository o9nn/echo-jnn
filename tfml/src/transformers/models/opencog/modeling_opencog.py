# coding=utf-8
# Copyright 2025 The HuggingFace Inc. team. All rights reserved.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
"""PyTorch OpenCog model."""

import math
from dataclasses import dataclass
from typing import Optional, Tuple, Union

import torch
import torch.utils.checkpoint
from torch import nn
from torch.nn import CrossEntropyLoss, MSELoss

from ...activations import ACT2FN
from ...modeling_outputs import (
    BaseModelOutputWithPoolingAndCrossAttentions,
    MaskedLMOutput,
    SequenceClassifierOutput,
)
from ...modeling_utils import PreTrainedModel
from ...utils import ModelOutput, auto_docstring, logging
from .configuration_opencog import OpenCogConfig


logger = logging.get_logger(__name__)


@dataclass
class OpenCogOutput(ModelOutput):
    """
    Base class for OpenCog model's outputs that may also contain a pooling of the last hidden states.

    Args:
        last_hidden_state (`torch.FloatTensor` of shape `(batch_size, sequence_length, hidden_size)`):
            Sequence of hidden-states at the output of the last layer of the model.
        pooler_output (`torch.FloatTensor` of shape `(batch_size, hidden_size)`):
            Last layer hidden-state of the first token of the sequence (classification token) after pooling.
        hidden_states (`tuple(torch.FloatTensor)`, *optional*, returned when `output_hidden_states=True` is passed or when `config.output_hidden_states=True`):
            Tuple of `torch.FloatTensor` (one for the output of the embeddings, if the model has an embedding layer, +
            one for the output of each layer) of shape `(batch_size, sequence_length, hidden_size)`.
        attentions (`tuple(torch.FloatTensor)`, *optional*, returned when `output_attentions=True` is passed or when `config.output_attentions=True`):
            Tuple of `torch.FloatTensor` (one for each layer) of shape `(batch_size, num_heads, sequence_length,
            sequence_length)`.
        atomspace_state (`torch.FloatTensor` of shape `(batch_size, atomspace_size, hidden_size)`):
            State representation of the AtomSpace after processing.
        pln_reasoning_output (`torch.FloatTensor`, *optional*):
            Output from Pattern Learning Network reasoning components.
        moses_evolution_output (`torch.FloatTensor`, *optional*):
            Output from MOSES evolutionary learning system.
        openpsi_control_output (`torch.FloatTensor`, *optional*):
            Output from OpenPsi cognitive control framework.
    """

    last_hidden_state: torch.FloatTensor = None
    pooler_output: torch.FloatTensor = None
    hidden_states: Optional[Tuple[torch.FloatTensor, ...]] = None
    attentions: Optional[Tuple[torch.FloatTensor, ...]] = None
    atomspace_state: Optional[torch.FloatTensor] = None
    pln_reasoning_output: Optional[torch.FloatTensor] = None
    moses_evolution_output: Optional[torch.FloatTensor] = None
    openpsi_control_output: Optional[torch.FloatTensor] = None


class OpenCogEmbeddings(nn.Module):
    """Construct the embeddings from word, position and token_type embeddings."""

    def __init__(self, config):
        super().__init__()
        self.word_embeddings = nn.Embedding(config.vocab_size, config.hidden_size, padding_idx=config.pad_token_id)
        self.position_embeddings = nn.Embedding(config.max_position_embeddings, config.hidden_size)
        self.token_type_embeddings = nn.Embedding(config.type_vocab_size, config.hidden_size)

        # AtomSpace symbolic embeddings
        self.atom_type_embeddings = nn.Embedding(len(config.atom_types), config.hidden_size)
        
        self.LayerNorm = nn.LayerNorm(config.hidden_size, eps=config.layer_norm_eps)
        self.dropout = nn.Dropout(config.hidden_dropout_prob)
        
        # Register atom types for symbolic processing
        self.register_buffer("atom_types", torch.tensor(list(range(len(config.atom_types)))))
        self.register_buffer("position_ids", torch.arange(config.max_position_embeddings).expand((1, -1)))

    def forward(
        self,
        input_ids: Optional[torch.LongTensor] = None,
        token_type_ids: Optional[torch.LongTensor] = None,
        position_ids: Optional[torch.LongTensor] = None,
        atom_type_ids: Optional[torch.LongTensor] = None,
        inputs_embeds: Optional[torch.FloatTensor] = None,
        past_key_values_length: int = 0,
    ) -> torch.Tensor:
        if input_ids is not None:
            input_shape = input_ids.size()
        else:
            input_shape = inputs_embeds.size()[:-1]

        seq_length = input_shape[1]

        if position_ids is None:
            position_ids = self.position_ids[:, past_key_values_length : seq_length + past_key_values_length]

        if token_type_ids is None:
            if hasattr(self, "token_type_ids"):
                buffered_token_type_ids = self.token_type_ids[:, :seq_length]
                buffered_token_type_ids_expanded = buffered_token_type_ids.expand(input_shape[0], seq_length)
                token_type_ids = buffered_token_type_ids_expanded
            else:
                token_type_ids = torch.zeros(input_shape, dtype=torch.long, device=self.position_ids.device)

        if inputs_embeds is None:
            inputs_embeds = self.word_embeddings(input_ids)
        token_type_embeddings = self.token_type_embeddings(token_type_ids)

        embeddings = inputs_embeds + token_type_embeddings
        
        if position_ids is not None:
            position_embeddings = self.position_embeddings(position_ids)
            embeddings += position_embeddings

        # Add atom type embeddings for symbolic representation
        if atom_type_ids is not None:
            atom_embeddings = self.atom_type_embeddings(atom_type_ids)
            embeddings += atom_embeddings

        embeddings = self.LayerNorm(embeddings)
        embeddings = self.dropout(embeddings)
        return embeddings


class AtomSpace(nn.Module):
    """AtomSpace: Core knowledge representation component of OpenCog."""
    
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.atomspace_size = config.atomspace_size
        self.hidden_size = config.hidden_size
        
        # Atom storage and retrieval mechanisms
        self.atom_memory = nn.Parameter(torch.randn(config.atomspace_size, config.hidden_size))
        self.attention_values = nn.Parameter(torch.ones(config.atomspace_size))
        self.truth_values = nn.Parameter(torch.rand(config.atomspace_size, 2))  # strength, confidence
        
        # Atom manipulation layers
        self.atom_attention = nn.MultiheadAttention(config.hidden_size, config.num_attention_heads, dropout=config.attention_probs_dropout_prob)
        self.atom_update = nn.Linear(config.hidden_size * 2, config.hidden_size)
        self.atom_gate = nn.Sigmoid()
        
    def forward(self, hidden_states, attention_mask=None):
        batch_size, seq_len, hidden_size = hidden_states.shape
        
        # Expand atom memory for batch processing
        atom_memory = self.atom_memory.unsqueeze(0).expand(batch_size, -1, -1)
        
        # Attention between input and atoms
        attn_output, attn_weights = self.atom_attention(
            query=hidden_states.transpose(0, 1),
            key=atom_memory.transpose(0, 1),
            value=atom_memory.transpose(0, 1),
            key_padding_mask=None
        )
        attn_output = attn_output.transpose(0, 1)
        
        # Update atom states based on attention
        combined = torch.cat([hidden_states, attn_output], dim=-1)
        updated_states = self.atom_update(combined)
        gated_states = self.atom_gate(updated_states) * hidden_states + (1 - self.atom_gate(updated_states)) * attn_output
        
        # Update attention values (simple decay mechanism)
        self.attention_values.data *= self.config.attention_value_decay
        
        return gated_states, atom_memory


class PLNReasoner(nn.Module):
    """Pattern Learning Network: Probabilistic logical reasoning component."""
    
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.hidden_size = config.hidden_size
        
        # Rule application layers
        self.premise_encoder = nn.Linear(config.hidden_size, config.hidden_size)
        self.conclusion_decoder = nn.Linear(config.hidden_size, config.hidden_size)
        self.rule_weight = nn.Parameter(torch.randn(config.hidden_size, config.hidden_size))
        
        # Truth value computation
        self.truth_value_net = nn.Sequential(
            nn.Linear(config.hidden_size, config.hidden_size // 2),
            nn.ReLU(),
            nn.Linear(config.hidden_size // 2, 2)  # strength, confidence
        )
        
    def forward(self, hidden_states, atomspace_state):
        # Encode premises from hidden states
        premises = self.premise_encoder(hidden_states)
        
        # Apply logical rules through matrix multiplication
        rule_applied = torch.matmul(premises, self.rule_weight)
        
        # Decode conclusions
        conclusions = self.conclusion_decoder(rule_applied)
        
        # Compute truth values for conclusions
        truth_values = self.truth_value_net(conclusions)
        
        return conclusions, truth_values


class MOSESEvolver(nn.Module):
    """MOSES: Meta-Optimizing Semantic Evolutionary Search component."""
    
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.hidden_size = config.hidden_size
        
        # Population-based evolution simulation
        self.population_size = 32
        self.mutation_rate = nn.Parameter(torch.tensor(0.1))
        
        # Fitness evaluation network
        self.fitness_evaluator = nn.Sequential(
            nn.Linear(config.hidden_size, config.hidden_size // 2),
            nn.ReLU(),
            nn.Linear(config.hidden_size // 2, 1),
            nn.Sigmoid()
        )
        
        # Evolution operators
        self.mutator = nn.Linear(config.hidden_size, config.hidden_size)
        self.crossover = nn.Bilinear(config.hidden_size, config.hidden_size, config.hidden_size)
        
    def forward(self, hidden_states):
        batch_size, seq_len, hidden_size = hidden_states.shape
        
        # Simulate evolutionary process
        # Mutation
        noise = torch.randn_like(hidden_states) * self.mutation_rate
        mutated = self.mutator(hidden_states + noise)
        
        # Fitness evaluation
        fitness = self.fitness_evaluator(mutated)
        
        # Selection based on fitness
        evolved_states = mutated * fitness + hidden_states * (1 - fitness)
        
        return evolved_states, fitness


class OpenPsiController(nn.Module):
    """OpenPsi: Cognitive control and goal-oriented behavior framework."""
    
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.hidden_size = config.hidden_size
        
        # Goal representation
        self.goal_embedding = nn.Parameter(torch.randn(config.hidden_size))
        
        # Demand and goal networks
        self.demand_network = nn.Sequential(
            nn.Linear(config.hidden_size, config.hidden_size // 2),
            nn.ReLU(),
            nn.Linear(config.hidden_size // 2, config.hidden_size)
        )
        
        self.action_selection = nn.Sequential(
            nn.Linear(config.hidden_size * 2, config.hidden_size),
            nn.ReLU(),
            nn.Linear(config.hidden_size, config.hidden_size)
        )
        
    def forward(self, hidden_states):
        batch_size, seq_len, hidden_size = hidden_states.shape
        
        # Expand goal for batch processing
        goal = self.goal_embedding.unsqueeze(0).unsqueeze(0).expand(batch_size, seq_len, -1)
        
        # Compute demands based on current state
        demands = self.demand_network(hidden_states)
        
        # Action selection based on goals and demands
        combined = torch.cat([demands, goal], dim=-1)
        actions = self.action_selection(combined)
        
        return actions, demands


class OpenCogSelfAttention(nn.Module):
    """Self-attention with cognitive enhancements."""
    
    def __init__(self, config):
        super().__init__()
        if config.hidden_size % config.num_attention_heads != 0:
            raise ValueError(
                f"The hidden size ({config.hidden_size}) is not a multiple of the number of attention "
                f"heads ({config.num_attention_heads})"
            )

        self.num_attention_heads = config.num_attention_heads
        self.attention_head_size = int(config.hidden_size / config.num_attention_heads)
        self.all_head_size = self.num_attention_heads * self.attention_head_size

        self.query = nn.Linear(config.hidden_size, self.all_head_size)
        self.key = nn.Linear(config.hidden_size, self.all_head_size)
        self.value = nn.Linear(config.hidden_size, self.all_head_size)

        self.dropout = nn.Dropout(config.attention_probs_dropout_prob)

    def transpose_for_scores(self, x: torch.Tensor) -> torch.Tensor:
        new_x_shape = x.size()[:-1] + (self.num_attention_heads, self.attention_head_size)
        x = x.view(new_x_shape)
        return x.permute(0, 2, 1, 3)

    def forward(
        self,
        hidden_states: torch.Tensor,
        attention_mask: Optional[torch.FloatTensor] = None,
        head_mask: Optional[torch.FloatTensor] = None,
        output_attentions: Optional[bool] = False,
    ) -> Tuple[torch.Tensor]:
        mixed_query_layer = self.query(hidden_states)

        key_layer = self.transpose_for_scores(self.key(hidden_states))
        value_layer = self.transpose_for_scores(self.value(hidden_states))
        query_layer = self.transpose_for_scores(mixed_query_layer)

        attention_scores = torch.matmul(query_layer, key_layer.transpose(-1, -2))
        attention_scores = attention_scores / math.sqrt(self.attention_head_size)
        
        if attention_mask is not None:
            attention_scores = attention_scores + attention_mask

        attention_probs = nn.functional.softmax(attention_scores, dim=-1)
        attention_probs = self.dropout(attention_probs)

        if head_mask is not None:
            attention_probs = attention_probs * head_mask

        context_layer = torch.matmul(attention_probs, value_layer)

        context_layer = context_layer.permute(0, 2, 1, 3).contiguous()
        new_context_layer_shape = context_layer.size()[:-2] + (self.all_head_size,)
        context_layer = context_layer.view(new_context_layer_shape)

        outputs = (context_layer, attention_probs) if output_attentions else (context_layer,)

        return outputs


class OpenCogSelfOutput(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.dense = nn.Linear(config.hidden_size, config.hidden_size)
        self.LayerNorm = nn.LayerNorm(config.hidden_size, eps=config.layer_norm_eps)
        self.dropout = nn.Dropout(config.hidden_dropout_prob)

    def forward(self, hidden_states: torch.Tensor, input_tensor: torch.Tensor) -> torch.Tensor:
        hidden_states = self.dense(hidden_states)
        hidden_states = self.dropout(hidden_states)
        hidden_states = self.LayerNorm(hidden_states + input_tensor)
        return hidden_states


class OpenCogAttention(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.self = OpenCogSelfAttention(config)
        self.output = OpenCogSelfOutput(config)

    def forward(
        self,
        hidden_states: torch.Tensor,
        attention_mask: Optional[torch.FloatTensor] = None,
        head_mask: Optional[torch.FloatTensor] = None,
        output_attentions: Optional[bool] = False,
    ) -> Tuple[torch.Tensor]:
        self_outputs = self.self(
            hidden_states,
            attention_mask,
            head_mask,
            output_attentions,
        )
        attention_output = self.output(self_outputs[0], hidden_states)

        outputs = (attention_output,) + self_outputs[1:]
        return outputs


class OpenCogIntermediate(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.dense = nn.Linear(config.hidden_size, config.intermediate_size)
        if isinstance(config.hidden_act, str):
            self.intermediate_act_fn = ACT2FN[config.hidden_act]
        else:
            self.intermediate_act_fn = config.hidden_act

    def forward(self, hidden_states: torch.Tensor) -> torch.Tensor:
        hidden_states = self.dense(hidden_states)
        hidden_states = self.intermediate_act_fn(hidden_states)
        return hidden_states


class OpenCogOutput(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.dense = nn.Linear(config.intermediate_size, config.hidden_size)
        self.LayerNorm = nn.LayerNorm(config.hidden_size, eps=config.layer_norm_eps)
        self.dropout = nn.Dropout(config.hidden_dropout_prob)

    def forward(self, hidden_states: torch.Tensor, input_tensor: torch.Tensor) -> torch.Tensor:
        hidden_states = self.dense(hidden_states)
        hidden_states = self.dropout(hidden_states)
        hidden_states = self.LayerNorm(hidden_states + input_tensor)
        return hidden_states


class OpenCogLayer(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.chunk_size_feed_forward = config.chunking_size if hasattr(config, 'chunking_size') else 0
        self.seq_len_dim = 1
        self.attention = OpenCogAttention(config)
        self.intermediate = OpenCogIntermediate(config)
        self.output = OpenCogOutput(config)
        
        # OpenCog cognitive components
        if config.pln_enabled:
            self.pln_reasoner = PLNReasoner(config)
        if config.moses_enabled:
            self.moses_evolver = MOSESEvolver(config)
        if config.openpsi_enabled:
            self.openpsi_controller = OpenPsiController(config)

    def forward(
        self,
        hidden_states: torch.Tensor,
        atomspace_state: Optional[torch.Tensor] = None,
        attention_mask: Optional[torch.FloatTensor] = None,
        head_mask: Optional[torch.FloatTensor] = None,
        output_attentions: Optional[bool] = False,
    ) -> Tuple[torch.Tensor]:
        self_attention_outputs = self.attention(
            hidden_states,
            attention_mask,
            head_mask,
            output_attentions=output_attentions,
        )
        attention_output = self_attention_outputs[0]

        outputs = self_attention_outputs[1:]

        layer_output = self.feed_forward_chunk(attention_output)
        
        # Apply OpenCog cognitive components
        cognitive_outputs = {}
        
        if self.config.pln_enabled and hasattr(self, 'pln_reasoner'):
            pln_output, truth_values = self.pln_reasoner(layer_output, atomspace_state)
            cognitive_outputs['pln_reasoning_output'] = pln_output
            layer_output = layer_output + 0.1 * pln_output  # Weighted integration
            
        if self.config.moses_enabled and hasattr(self, 'moses_evolver'):
            evolved_output, fitness = self.moses_evolver(layer_output)
            cognitive_outputs['moses_evolution_output'] = evolved_output
            layer_output = evolved_output
            
        if self.config.openpsi_enabled and hasattr(self, 'openpsi_controller'):
            control_output, demands = self.openpsi_controller(layer_output)
            cognitive_outputs['openpsi_control_output'] = control_output
            layer_output = layer_output + 0.1 * control_output  # Weighted integration

        outputs = (layer_output,) + outputs + tuple(cognitive_outputs.values())

        return outputs

    def feed_forward_chunk(self, attention_output):
        intermediate_output = self.intermediate(attention_output)
        layer_output = self.output(intermediate_output, attention_output)
        return layer_output


class OpenCogEncoder(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.config = config
        self.layer = nn.ModuleList([OpenCogLayer(config) for _ in range(config.num_hidden_layers)])
        self.gradient_checkpointing = False
        
        # AtomSpace integration
        self.atomspace = AtomSpace(config)

    def forward(
        self,
        hidden_states: torch.Tensor,
        attention_mask: Optional[torch.FloatTensor] = None,
        head_mask: Optional[torch.FloatTensor] = None,
        output_attentions: Optional[bool] = False,
        output_hidden_states: Optional[bool] = False,
        return_dict: Optional[bool] = True,
    ) -> Union[Tuple[torch.Tensor], BaseModelOutputWithPoolingAndCrossAttentions]:
        all_hidden_states = () if output_hidden_states else None
        all_self_attentions = () if output_attentions else None
        
        # Initialize AtomSpace state
        atomspace_state, atom_memory = self.atomspace(hidden_states, attention_mask)
        
        # Store cognitive outputs
        pln_reasoning_outputs = []
        moses_evolution_outputs = []
        openpsi_control_outputs = []

        for i, layer_module in enumerate(self.layer):
            if output_hidden_states:
                all_hidden_states = all_hidden_states + (hidden_states,)

            if self.gradient_checkpointing and self.training:
                layer_outputs = self._gradient_checkpointing_func(
                    layer_module.__call__,
                    hidden_states,
                    atomspace_state,
                    attention_mask,
                    head_mask[i] if head_mask is not None else None,
                    output_attentions,
                )
            else:
                layer_outputs = layer_module(
                    hidden_states,
                    atomspace_state,
                    attention_mask,
                    head_mask[i] if head_mask is not None else None,
                    output_attentions,
                )

            hidden_states = layer_outputs[0]

            if output_attentions:
                all_self_attentions = all_self_attentions + (layer_outputs[1],)
                
            # Collect cognitive outputs
            if len(layer_outputs) > 2:
                cognitive_start_idx = 2 if not output_attentions else 3
                if len(layer_outputs) > cognitive_start_idx:
                    pln_reasoning_outputs.append(layer_outputs[cognitive_start_idx])
                if len(layer_outputs) > cognitive_start_idx + 1:
                    moses_evolution_outputs.append(layer_outputs[cognitive_start_idx + 1])
                if len(layer_outputs) > cognitive_start_idx + 2:
                    openpsi_control_outputs.append(layer_outputs[cognitive_start_idx + 2])

        if output_hidden_states:
            all_hidden_states = all_hidden_states + (hidden_states,)

        if not return_dict:
            return tuple(
                v
                for v in [
                    hidden_states,
                    all_hidden_states,
                    all_self_attentions,
                ]
                if v is not None
            )
        
        # Aggregate cognitive outputs
        final_pln_output = torch.stack(pln_reasoning_outputs).mean(dim=0) if pln_reasoning_outputs else None
        final_moses_output = torch.stack(moses_evolution_outputs).mean(dim=0) if moses_evolution_outputs else None
        final_openpsi_output = torch.stack(openpsi_control_outputs).mean(dim=0) if openpsi_control_outputs else None
        
        return OpenCogOutput(
            last_hidden_state=hidden_states,
            hidden_states=all_hidden_states,
            attentions=all_self_attentions,
            atomspace_state=atomspace_state,
            pln_reasoning_output=final_pln_output,
            moses_evolution_output=final_moses_output,
            openpsi_control_output=final_openpsi_output,
        )


class OpenCogPooler(nn.Module):
    def __init__(self, config):
        super().__init__()
        self.dense = nn.Linear(config.hidden_size, config.hidden_size)
        self.activation = nn.Tanh()

    def forward(self, hidden_states: torch.Tensor) -> torch.Tensor:
        first_token_tensor = hidden_states[:, 0]
        pooled_output = self.dense(first_token_tensor)
        pooled_output = self.activation(pooled_output)
        return pooled_output


class OpenCogPreTrainedModel(PreTrainedModel):
    """
    An abstract class to handle weights initialization and a simple interface for downloading and loading pretrained
    models.
    """

    config_class = OpenCogConfig
    base_model_prefix = "opencog"
    supports_gradient_checkpointing = True

    def _init_weights(self, module):
        """Initialize the weights"""
        if isinstance(module, nn.Linear):
            module.weight.data.normal_(mean=0.0, std=self.config.initializer_range)
            if module.bias is not None:
                module.bias.data.zero_()
        elif isinstance(module, nn.Embedding):
            module.weight.data.normal_(mean=0.0, std=self.config.initializer_range)
            if module.padding_idx is not None:
                module.weight.data[module.padding_idx].zero_()
        elif isinstance(module, nn.LayerNorm):
            module.bias.data.zero_()
            module.weight.data.fill_(1.0)


@auto_docstring
class OpenCogModel(OpenCogPreTrainedModel):
    """
    The OpenCog model for cognitive architecture tasks, incorporating AtomSpace, PLN reasoning,
    MOSES evolutionary learning, and OpenPsi cognitive control framework.
    """

    def __init__(self, config, add_pooling_layer=True):
        super().__init__(config)
        self.config = config

        self.embeddings = OpenCogEmbeddings(config)
        self.encoder = OpenCogEncoder(config)

        self.pooler = OpenCogPooler(config) if add_pooling_layer else None

        # Initialize weights and apply final processing
        self.post_init()

    def get_input_embeddings(self):
        return self.embeddings.word_embeddings

    def set_input_embeddings(self, value):
        self.embeddings.word_embeddings = value

    def _prune_heads(self, heads_to_prune):
        """
        Prunes heads of the model. heads_to_prune: dict of {layer_num: list of heads to prune in this layer} See base
        class PreTrainedModel
        """
        for layer, heads in heads_to_prune.items():
            self.encoder.layer[layer].attention.prune_heads(heads)

    def forward(
        self,
        input_ids: Optional[torch.Tensor] = None,
        attention_mask: Optional[torch.Tensor] = None,
        token_type_ids: Optional[torch.Tensor] = None,
        position_ids: Optional[torch.Tensor] = None,
        atom_type_ids: Optional[torch.Tensor] = None,
        head_mask: Optional[torch.Tensor] = None,
        inputs_embeds: Optional[torch.Tensor] = None,
        output_attentions: Optional[bool] = None,
        output_hidden_states: Optional[bool] = None,
        return_dict: Optional[bool] = None,
    ) -> Union[Tuple[torch.Tensor], OpenCogOutput]:
        r"""
        Args:
            atom_type_ids (:obj:`torch.LongTensor` of shape :obj:`(batch_size, sequence_length)`, `optional`):
                Atom type IDs for symbolic representation in AtomSpace.
        """
        output_attentions = output_attentions if output_attentions is not None else self.config.output_attentions
        output_hidden_states = (
            output_hidden_states if output_hidden_states is not None else self.config.output_hidden_states
        )
        return_dict = return_dict if return_dict is not None else self.config.use_return_dict

        if input_ids is not None and inputs_embeds is not None:
            raise ValueError("You cannot specify both input_ids and inputs_embeds at the same time")
        elif input_ids is not None:
            self.warn_if_padding_and_no_attention_mask(input_ids, attention_mask)
            input_shape = input_ids.size()
        elif inputs_embeds is not None:
            input_shape = inputs_embeds.size()[:-1]
        else:
            raise ValueError("You have to specify either input_ids or inputs_embeds")

        batch_size, seq_length = input_shape
        device = input_ids.device if input_ids is not None else inputs_embeds.device

        if attention_mask is None:
            attention_mask = torch.ones(((batch_size, seq_length)), device=device)

        if token_type_ids is None:
            if hasattr(self.embeddings, "token_type_ids"):
                buffered_token_type_ids = self.embeddings.token_type_ids[:, :seq_length]
                buffered_token_type_ids_expanded = buffered_token_type_ids.expand(batch_size, seq_length)
                token_type_ids = buffered_token_type_ids_expanded
            else:
                token_type_ids = torch.zeros(input_shape, dtype=torch.long, device=device)

        extended_attention_mask: torch.Tensor = self.get_extended_attention_mask(attention_mask, input_shape)

        head_mask = self.get_head_mask(head_mask, self.config.num_hidden_layers)

        embedding_output = self.embeddings(
            input_ids=input_ids,
            position_ids=position_ids,
            token_type_ids=token_type_ids,
            atom_type_ids=atom_type_ids,
            inputs_embeds=inputs_embeds,
        )
        encoder_outputs = self.encoder(
            embedding_output,
            attention_mask=extended_attention_mask,
            head_mask=head_mask,
            output_attentions=output_attentions,
            output_hidden_states=output_hidden_states,
            return_dict=return_dict,
        )
        sequence_output = encoder_outputs.last_hidden_state if return_dict else encoder_outputs[0]
        pooled_output = self.pooler(sequence_output) if self.pooler is not None else None

        if not return_dict:
            return (sequence_output, pooled_output) + encoder_outputs[1:]

        return OpenCogOutput(
            last_hidden_state=sequence_output,
            pooler_output=pooled_output,
            hidden_states=encoder_outputs.hidden_states,
            attentions=encoder_outputs.attentions,
            atomspace_state=encoder_outputs.atomspace_state,
            pln_reasoning_output=encoder_outputs.pln_reasoning_output,
            moses_evolution_output=encoder_outputs.moses_evolution_output,
            openpsi_control_output=encoder_outputs.openpsi_control_output,
        )


@auto_docstring
class OpenCogForMaskedLM(OpenCogPreTrainedModel):
    """OpenCog Model with a language modeling head on top."""

    def __init__(self, config):
        super().__init__(config)

        self.opencog = OpenCogModel(config, add_pooling_layer=False)
        self.cls = nn.Linear(config.hidden_size, config.vocab_size)

        # Initialize weights and apply final processing
        self.post_init()

    def get_output_embeddings(self):
        return self.cls

    def set_output_embeddings(self, new_embeddings):
        self.cls = new_embeddings

    def forward(
        self,
        input_ids: Optional[torch.Tensor] = None,
        attention_mask: Optional[torch.Tensor] = None,
        token_type_ids: Optional[torch.Tensor] = None,
        position_ids: Optional[torch.Tensor] = None,
        head_mask: Optional[torch.Tensor] = None,
        inputs_embeds: Optional[torch.Tensor] = None,
        labels: Optional[torch.Tensor] = None,
        output_attentions: Optional[bool] = None,
        output_hidden_states: Optional[bool] = None,
        return_dict: Optional[bool] = None,
    ) -> Union[Tuple[torch.Tensor], MaskedLMOutput]:
        return_dict = return_dict if return_dict is not None else self.config.use_return_dict

        outputs = self.opencog(
            input_ids,
            attention_mask=attention_mask,
            token_type_ids=token_type_ids,
            position_ids=position_ids,
            head_mask=head_mask,
            inputs_embeds=inputs_embeds,
            output_attentions=output_attentions,
            output_hidden_states=output_hidden_states,
            return_dict=return_dict,
        )

        sequence_output = outputs.last_hidden_state if return_dict else outputs[0]
        prediction_scores = self.cls(sequence_output)

        masked_lm_loss = None
        if labels is not None:
            loss_fct = CrossEntropyLoss()
            masked_lm_loss = loss_fct(prediction_scores.view(-1, self.config.vocab_size), labels.view(-1))

        if not return_dict:
            output = (prediction_scores,) + outputs[2:]
            return ((masked_lm_loss,) + output) if masked_lm_loss is not None else output

        return MaskedLMOutput(
            loss=masked_lm_loss,
            logits=prediction_scores,
            hidden_states=outputs.hidden_states,
            attentions=outputs.attentions,
        )


@auto_docstring
class OpenCogForSequenceClassification(OpenCogPreTrainedModel):
    """OpenCog Model with a sequence classification/regression head on top."""

    def __init__(self, config):
        super().__init__(config)
        self.num_labels = config.num_labels
        self.config = config

        self.opencog = OpenCogModel(config)
        classifier_dropout = (
            config.classifier_dropout if config.classifier_dropout is not None else config.hidden_dropout_prob
        )
        self.dropout = nn.Dropout(classifier_dropout)
        self.classifier = nn.Linear(config.hidden_size, config.num_labels)

        # Initialize weights and apply final processing
        self.post_init()

    def forward(
        self,
        input_ids: Optional[torch.Tensor] = None,
        attention_mask: Optional[torch.Tensor] = None,
        token_type_ids: Optional[torch.Tensor] = None,
        position_ids: Optional[torch.Tensor] = None,
        head_mask: Optional[torch.Tensor] = None,
        inputs_embeds: Optional[torch.Tensor] = None,
        labels: Optional[torch.Tensor] = None,
        output_attentions: Optional[bool] = None,
        output_hidden_states: Optional[bool] = None,
        return_dict: Optional[bool] = None,
    ) -> Union[Tuple[torch.Tensor], SequenceClassifierOutput]:
        return_dict = return_dict if return_dict is not None else self.config.use_return_dict

        outputs = self.opencog(
            input_ids,
            attention_mask=attention_mask,
            token_type_ids=token_type_ids,
            position_ids=position_ids,
            head_mask=head_mask,
            inputs_embeds=inputs_embeds,
            output_attentions=output_attentions,
            output_hidden_states=output_hidden_states,
            return_dict=return_dict,
        )

        pooled_output = outputs.pooler_output if return_dict else outputs[1]

        pooled_output = self.dropout(pooled_output)
        logits = self.classifier(pooled_output)

        loss = None
        if labels is not None:
            if self.config.problem_type is None:
                if self.num_labels == 1:
                    self.config.problem_type = "regression"
                elif self.num_labels > 1 and (labels.dtype == torch.long or labels.dtype == torch.int):
                    self.config.problem_type = "single_label_classification"
                else:
                    self.config.problem_type = "multi_label_classification"

            if self.config.problem_type == "regression":
                loss_fct = MSELoss()
                if self.num_labels == 1:
                    loss = loss_fct(logits.squeeze(), labels.squeeze())
                else:
                    loss = loss_fct(logits, labels)
            elif self.config.problem_type == "single_label_classification":
                loss_fct = CrossEntropyLoss()
                loss = loss_fct(logits.view(-1, self.num_labels), labels.view(-1))
            elif self.config.problem_type == "multi_label_classification":
                loss_fct = nn.BCEWithLogitsLoss()
                loss = loss_fct(logits, labels)

        if not return_dict:
            output = (logits,) + outputs[2:]
            return ((loss,) + output) if loss is not None else output

        return SequenceClassifierOutput(
            loss=loss,
            logits=logits,
            hidden_states=outputs.hidden_states,
            attentions=outputs.attentions,
        )