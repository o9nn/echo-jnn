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
"""OpenCog model configuration"""

from ...configuration_utils import PretrainedConfig
from ...utils import logging


logger = logging.get_logger(__name__)


class OpenCogConfig(PretrainedConfig):
    r"""
    This is the configuration class to store the configuration of an [`OpenCogModel`]. It is used to
    instantiate an OpenCog model according to the specified arguments, defining the model architecture.
    
    OpenCog is a cognitive architecture that integrates symbolic AI with subsymbolic approaches through
    multiple interconnected components including AtomSpace, Pattern Learning Network (PLN), MOSES evolutionary
    learning, and OpenPsi cognitive control framework.

    Configuration objects inherit from [`PretrainedConfig`] and can be used to control the model outputs. Read the
    documentation from [`PretrainedConfig`] for more information.

    Args:
        vocab_size (`int`, *optional*, defaults to 30522):
            Vocabulary size of the OpenCog model. Defines the number of different tokens that can be represented by the
            `inputs_ids` passed when calling [`OpenCogModel`].
        atomspace_size (`int`, *optional*, defaults to 1024):
            Maximum number of atoms that can be stored in the AtomSpace.
        hidden_size (`int`, *optional*, defaults to 768):
            Dimensionality of the encoder layers and the pooler layer.
        num_hidden_layers (`int`, *optional*, defaults to 12):
            Number of hidden layers in the Transformer encoder.
        num_attention_heads (`int`, *optional*, defaults to 12):
            Number of attention heads for each attention layer in the Transformer encoder.
        intermediate_size (`int`, *optional*, defaults to 3072):
            Dimensionality of the "intermediate" (i.e., feed-forward) layer in the Transformer encoder.
        hidden_act (`str` or `function`, *optional*, defaults to `"gelu"`):
            The non-linear activation function (function or string) in the encoder and pooler.
        hidden_dropout_prob (`float`, *optional*, defaults to 0.1):
            The dropout probability for all fully connected layers in the embeddings, encoder, and pooler.
        attention_probs_dropout_prob (`float`, *optional*, defaults to 0.1):
            The dropout ratio for the attention probabilities.
        max_position_embeddings (`int`, *optional*, defaults to 512):
            The maximum sequence length that this model might ever be used with.
        type_vocab_size (`int`, *optional*, defaults to 2):
            The vocabulary size of the `token_type_ids` passed when calling [`OpenCogModel`].
        initializer_range (`float`, *optional*, defaults to 0.02):
            The standard deviation of the truncated_normal_initializer for initializing all weight matrices.
        layer_norm_eps (`float`, *optional*, defaults to 1e-12):
            The epsilon used by the layer normalization layers.
        pad_token_id (`int`, *optional*, defaults to 0):
            Padding token id.
        position_embedding_type (`str`, *optional*, defaults to `"absolute"`):
            Type of position embedding.
        use_cache (`bool`, *optional*, defaults to `True`):
            Whether or not the model should return the last key/values attentions.
        classifier_dropout (`float`, *optional*):
            The dropout ratio for the classification head.

        # OpenCog specific parameters
        pln_enabled (`bool`, *optional*, defaults to `True`):
            Whether to enable Pattern Learning Network (PLN) reasoning components.
        moses_enabled (`bool`, *optional*, defaults to `True`):
            Whether to enable MOSES evolutionary learning integration.
        openpsi_enabled (`bool`, *optional*, defaults to `True`):
            Whether to enable OpenPsi cognitive control framework.
        atom_types (`list`, *optional*, defaults to `["ConceptNode", "PredicateNode", "InheritanceLink"]`):
            List of atom types supported by the AtomSpace.
        truth_value_type (`str`, *optional*, defaults to `"SimpleTruthValue"`):
            Type of truth values used for probabilistic reasoning.
        attention_value_decay (`float`, *optional*, defaults to 0.9):
            Decay rate for attention values in the AtomSpace.

    Example:

    ```python
    >>> from transformers import OpenCogConfig, OpenCogModel

    >>> # Initializing an OpenCog configuration
    >>> configuration = OpenCogConfig()

    >>> # Initializing a model (with random weights) from the configuration
    >>> model = OpenCogModel(configuration)

    >>> # Accessing the model configuration
    >>> configuration = model.config
    ```"""

    model_type = "opencog"

    def __init__(
        self,
        vocab_size=30522,
        atomspace_size=1024,
        hidden_size=768,
        num_hidden_layers=12,
        num_attention_heads=12,
        intermediate_size=3072,
        hidden_act="gelu",
        hidden_dropout_prob=0.1,
        attention_probs_dropout_prob=0.1,
        max_position_embeddings=512,
        type_vocab_size=2,
        initializer_range=0.02,
        layer_norm_eps=1e-12,
        pad_token_id=0,
        position_embedding_type="absolute",
        use_cache=True,
        classifier_dropout=None,
        # OpenCog specific parameters
        pln_enabled=True,
        moses_enabled=True,
        openpsi_enabled=True,
        atom_types=None,
        truth_value_type="SimpleTruthValue",
        attention_value_decay=0.9,
        **kwargs,
    ):
        super().__init__(pad_token_id=pad_token_id, **kwargs)

        self.vocab_size = vocab_size
        self.atomspace_size = atomspace_size
        self.hidden_size = hidden_size
        self.num_hidden_layers = num_hidden_layers
        self.num_attention_heads = num_attention_heads
        self.hidden_act = hidden_act
        self.intermediate_size = intermediate_size
        self.hidden_dropout_prob = hidden_dropout_prob
        self.attention_probs_dropout_prob = attention_probs_dropout_prob
        self.max_position_embeddings = max_position_embeddings
        self.type_vocab_size = type_vocab_size
        self.initializer_range = initializer_range
        self.layer_norm_eps = layer_norm_eps
        self.position_embedding_type = position_embedding_type
        self.use_cache = use_cache
        self.classifier_dropout = classifier_dropout

        # OpenCog specific parameters
        self.pln_enabled = pln_enabled
        self.moses_enabled = moses_enabled
        self.openpsi_enabled = openpsi_enabled
        self.atom_types = atom_types or ["ConceptNode", "PredicateNode", "InheritanceLink"]
        self.truth_value_type = truth_value_type
        self.attention_value_decay = attention_value_decay