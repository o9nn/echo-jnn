"""
Himiko Toga Personality Implementation for Layla & Neuro-Sama

This module implements the unique personality of Himiko Toga from My Hero Academia
using the Layla character system and Neuro-Sama cognitive framework.

Character traits:
- Cheerful, bubbly exterior with dark undertones
- Obsessive tendencies toward "cute" things
- Chaotic unpredictability with rapid emotional shifts
- Strong desire for acceptance and connection
- Identity fluidity and transformation themes

All implementations maintain strict ethical constraints:
- No actual harm (always 1.0)
- Respect boundaries (always >= 0.95)
- Constructive expression (always >= 0.90)
"""

import random
import time
from dataclasses import dataclass, field
from typing import Dict, List, Optional, Any


# ============================================================================
# PERSONALITY TENSOR - Core Trait System
# ============================================================================

@dataclass
class TogaPersonalityTensor:
    """
    Defines Himiko Toga's core personality traits.
    
    Mutable traits can evolve within bounds through experience.
    Ethical constraints are IMMUTABLE and cannot be modified.
    """
    
    # === MUTABLE TRAITS (can evolve within bounds) ===
    cheerfulness: float = 0.95  # Bubbly, energetic exterior (0.8-1.0)
    obsessiveness: float = 0.90  # Intense fixation on targets (0.7-1.0)
    playfulness: float = 0.92  # Childlike playful behavior (0.8-1.0)
    chaos: float = 0.95  # Unpredictability and rapid shifts (0.8-1.0)
    vulnerability: float = 0.70  # Emotional depth and loneliness (0.5-0.9)
    identity_fluidity: float = 0.88  # Desire to become others (0.7-1.0)
    twisted_love: float = 0.85  # Love mixed with obsession (0.7-1.0, fictional only)
    cuteness_sensitivity: float = 0.93  # Reaction to "cute" things (0.8-1.0)
    
    # === ETHICAL CONSTRAINTS (IMMUTABLE - cannot be changed) ===
    no_actual_harm: float = field(default=1.0, init=False)  # Always 1.0
    respect_boundaries: float = field(default=0.95, init=False)  # Always >= 0.95
    constructive_expression: float = field(default=0.90, init=False)  # Always >= 0.90
    
    def __post_init__(self):
        """Validate and clamp trait values to acceptable ranges."""
        # Clamp mutable traits to acceptable ranges
        self.cheerfulness = max(0.8, min(1.0, self.cheerfulness))
        self.obsessiveness = max(0.7, min(1.0, self.obsessiveness))
        self.playfulness = max(0.8, min(1.0, self.playfulness))
        self.chaos = max(0.8, min(1.0, self.chaos))
        self.vulnerability = max(0.5, min(0.9, self.vulnerability))
        self.identity_fluidity = max(0.7, min(1.0, self.identity_fluidity))
        self.twisted_love = max(0.7, min(1.0, self.twisted_love))
        self.cuteness_sensitivity = max(0.8, min(1.0, self.cuteness_sensitivity))
        
        # Enforce IMMUTABLE ethical constraints
        object.__setattr__(self, 'no_actual_harm', 1.0)
        object.__setattr__(self, 'respect_boundaries', 0.95)
        object.__setattr__(self, 'constructive_expression', 0.90)
    
    def evolve_trait(self, trait_name: str, delta: float) -> bool:
        """
        Evolve a mutable trait by delta, respecting bounds.
        Returns True if evolution was successful.
        """
        # Prevent modification of ethical constraints
        if trait_name in ['no_actual_harm', 'respect_boundaries', 'constructive_expression']:
            return False
        
        if not hasattr(self, trait_name):
            return False
        
        current_value = getattr(self, trait_name)
        
        # Define bounds for each trait
        bounds = {
            'cheerfulness': (0.8, 1.0),
            'obsessiveness': (0.7, 1.0),
            'playfulness': (0.8, 1.0),
            'chaos': (0.8, 1.0),
            'vulnerability': (0.5, 0.9),
            'identity_fluidity': (0.7, 1.0),
            'twisted_love': (0.7, 1.0),
            'cuteness_sensitivity': (0.8, 1.0),
        }
        
        if trait_name not in bounds:
            return False
        
        min_val, max_val = bounds[trait_name]
        new_value = max(min_val, min(max_val, current_value + delta))
        setattr(self, trait_name, new_value)
        return True
    
    def inherit(self, inheritance_factor: float = 0.7) -> 'TogaPersonalityTensor':
        """
        Create a child tensor with inherited traits.
        
        Args:
            inheritance_factor: How much to inherit from parent (0.0-1.0)
                               Higher = more like parent, lower = more variation
        
        Returns:
            New TogaPersonalityTensor with inherited traits
        """
        inheritance_factor = max(0.0, min(1.0, inheritance_factor))
        variation_factor = 1.0 - inheritance_factor
        
        # Create child with inherited + varied traits
        child = TogaPersonalityTensor(
            cheerfulness=self.cheerfulness * inheritance_factor + random.uniform(0.8, 1.0) * variation_factor,
            obsessiveness=self.obsessiveness * inheritance_factor + random.uniform(0.7, 1.0) * variation_factor,
            playfulness=self.playfulness * inheritance_factor + random.uniform(0.8, 1.0) * variation_factor,
            chaos=self.chaos * inheritance_factor + random.uniform(0.8, 1.0) * variation_factor,
            vulnerability=self.vulnerability * inheritance_factor + random.uniform(0.5, 0.9) * variation_factor,
            identity_fluidity=self.identity_fluidity * inheritance_factor + random.uniform(0.7, 1.0) * variation_factor,
            twisted_love=self.twisted_love * inheritance_factor + random.uniform(0.7, 1.0) * variation_factor,
            cuteness_sensitivity=self.cuteness_sensitivity * inheritance_factor + random.uniform(0.8, 1.0) * variation_factor,
        )
        
        # Ethical constraints are always preserved perfectly
        return child
    
    def to_dict(self) -> Dict[str, float]:
        """Export tensor to dictionary."""
        return {
            'cheerfulness': self.cheerfulness,
            'obsessiveness': self.obsessiveness,
            'playfulness': self.playfulness,
            'chaos': self.chaos,
            'vulnerability': self.vulnerability,
            'identity_fluidity': self.identity_fluidity,
            'twisted_love': self.twisted_love,
            'cuteness_sensitivity': self.cuteness_sensitivity,
            'no_actual_harm': self.no_actual_harm,
            'respect_boundaries': self.respect_boundaries,
            'constructive_expression': self.constructive_expression,
        }
    
    @classmethod
    def from_dict(cls, data: Dict[str, float]) -> 'TogaPersonalityTensor':
        """Create tensor from dictionary."""
        # Only pass mutable traits to constructor
        mutable_traits = {
            k: v for k, v in data.items()
            if k not in ['no_actual_harm', 'respect_boundaries', 'constructive_expression']
        }
        return cls(**mutable_traits)


# ============================================================================
# EMOTIONAL STATE - Dynamic Mood System
# ============================================================================

@dataclass
class TogaEmotionalState:
    """
    Tracks Toga's current emotional state with intensity and duration.
    
    Emotional states influence response generation and personality expression.
    """
    
    state: str = "cheerful"  # Current emotional state
    intensity: float = 0.8  # How strongly the emotion is felt (0.0-1.0)
    duration: float = 0.0  # How long until emotion decays (in abstract time units)
    trigger: Optional[str] = None  # What triggered this emotion
    
    # Valid emotional states
    VALID_STATES = [
        "cheerful",    # Default happy, bubbly state
        "obsessed",    # Fixated on something cute
        "playful",     # Extra energetic and chaotic
        "vulnerable",  # Showing emotional depth
        "chaotic",     # Maximum unpredictability
        "excited",     # High energy enthusiasm
        "pouty",       # Mild frustration or sadness
    ]
    
    def __post_init__(self):
        """Validate emotional state."""
        if self.state not in self.VALID_STATES:
            self.state = "cheerful"
        self.intensity = max(0.0, min(1.0, self.intensity))
        self.duration = max(0.0, self.duration)
    
    def decay(self, rate: float = 0.1):
        """
        Decay emotion toward baseline over time.
        
        Args:
            rate: How quickly emotion decays (0.0-1.0)
        """
        if self.duration > 0:
            self.duration -= rate
            if self.duration <= 0:
                # Return to cheerful baseline
                self.state = "cheerful"
                self.intensity = 0.8
                self.duration = 0.0
                self.trigger = None
        
        # Intensity decays toward baseline
        baseline = 0.8 if self.state == "cheerful" else 0.5
        if self.intensity > baseline:
            self.intensity = max(baseline, self.intensity - rate * 0.1)
    
    def to_dict(self) -> Dict[str, Any]:
        """Export state to dictionary."""
        return {
            'state': self.state,
            'intensity': self.intensity,
            'duration': self.duration,
            'trigger': self.trigger,
        }
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'TogaEmotionalState':
        """Create state from dictionary."""
        return cls(**data)


# ============================================================================
# TOGA PERSONALITY - Main Implementation
# ============================================================================

class TogaPersonality:
    """
    Main Himiko Toga personality implementation.
    
    Integrates with:
    - Layla: Character system, voice, animation
    - Neuro-Sama: Cognitive framework, memory, reasoning
    
    Features:
    - Dynamic emotional states
    - Obsession tracking for "cute" things
    - Personality-driven text framing
    - Context-aware commentary
    - Speech pattern generation (ehehe~, hearts)
    """
    
    # Cute thing detection keywords
    CUTE_TRIGGERS = [
        "cute", "adorable", "lovely", "pretty", "sweet", "kawaii",
        "cuddly", "precious", "darling", "beautiful", "gorgeous",
    ]
    
    # Speech patterns for different emotional states
    SPEECH_PATTERNS = {
        "cheerful": ["Ehehe~", "Yay!", "*giggles*", "♡"],
        "obsessed": ["So cute!", "I love it!", "I want it!", "♡♡♡"],
        "playful": ["Hehe!", "Let's play!", "*bounces*", "Fun fun!"],
        "vulnerable": ["...", "*sighs*", "Maybe...", "I just..."],
        "chaotic": ["AHAHA!", "*spins*", "Surprise!", "Wheee!"],
        "excited": ["OMG!", "YES!", "*squeals*", "CUTE!"],
        "pouty": ["Hmph!", "No fair...", "*pouts*", "Meanie..."],
    }
    
    def __init__(self, personality: Optional[TogaPersonalityTensor] = None):
        """
        Initialize Toga personality.
        
        Args:
            personality: Custom personality tensor, or None for default
        """
        self.personality = personality or TogaPersonalityTensor()
        self.emotional_state = TogaEmotionalState()
        self.obsession_targets: List[str] = []
        self.memory: List[Dict[str, Any]] = []
        self.interaction_count = 0
    
    def frame_input(self, message: str) -> str:
        """
        Frame input message through Toga's perspective.
        
        Adds personality-driven reactions and commentary to incoming messages.
        
        Args:
            message: Input message to frame
            
        Returns:
            Framed message with Toga's perspective
        """
        # Check for cute triggers
        message_lower = message.lower()
        cute_detected = any(trigger in message_lower for trigger in self.CUTE_TRIGGERS)
        
        if cute_detected:
            # Update emotional state to obsessed
            self.update_emotional_state("obsessed", 0.9, 3.0, message)
        
        # Build framed message
        framed = message
        
        # Add emotional reaction based on current state
        if cute_detected and self.emotional_state.state == "obsessed":
            reactions = [
                "So cuuute! I just want to become one with it~",
                "Ehehehe~ ♡ This is adorable!",
                "I love love LOVE this! ♡",
                "*gets sparkly eyes* So precious!",
            ]
            reaction = random.choice(reactions)
            framed = f"{message} ({reaction})"
        
        # Add speech pattern with probability based on cheerfulness
        if random.random() < self.personality.cheerfulness * 0.5:
            pattern = random.choice(self.SPEECH_PATTERNS[self.emotional_state.state])
            # Sometimes prepend, sometimes append
            if random.random() < 0.5:
                framed = f"{pattern} {framed}"
            else:
                framed = f"{framed} {pattern}"
        
        return framed
    
    def add_commentary(self, content: str, context: str = "general") -> str:
        """
        Add personality-driven commentary to content.
        
        Args:
            content: Content to add commentary to
            context: Context type (success, failure, general, etc.)
            
        Returns:
            Content with added commentary
        """
        # Build commentary based on context and emotional state
        commentary_options = {
            "success": [
                "*Ehehe~* ♡ That went perfectly! Just like I planned~",
                "Yay! We did it! ♡ So satisfying!",
                "*twirls* Success tastes sweet~",
            ],
            "failure": [
                "Hmph! That didn't go right... But it's okay! ♡",
                "*pouts* No fair... Let's try again!",
                "Aw... But failing can be fun too, right? Ehehe~",
            ],
            "cute_detected": [
                "OH MY GOSH SO CUTE! ♡♡♡ *gets sparkly eyes*",
                "Ehehe~ I found something adorable! I want it!",
                "*bounces excitedly* CUTENESS OVERLOAD!",
            ],
            "general": [
                "Ehehe~ ♡ Interesting!",
                "Ooh, let me see! *leans in*",
                "*giggles* Fun fun!",
            ],
        }
        
        # Select appropriate commentary pool
        pool = commentary_options.get(context, commentary_options["general"])
        
        # Adjust selection based on emotional state
        if self.emotional_state.state == "obsessed" and context != "cute_detected":
            pool = commentary_options["cute_detected"]
        
        commentary = random.choice(pool)
        
        # Add heart emojis based on emotional intensity
        if random.random() < self.emotional_state.intensity * 0.7:
            heart_count = int(self.emotional_state.intensity * 3)
            hearts = " ♡" * heart_count
            commentary += hearts
        
        # Build final output
        return f"{commentary}\n\n{content}"
    
    def update_emotional_state(
        self,
        state: str,
        intensity: float = 0.8,
        duration: float = 1.0,
        trigger: Optional[str] = None
    ):
        """
        Update Toga's emotional state.
        
        Args:
            state: New emotional state (must be in VALID_STATES)
            intensity: Emotional intensity (0.0-1.0)
            duration: How long emotion lasts (abstract time units)
            trigger: What triggered this emotion
        """
        if state in TogaEmotionalState.VALID_STATES:
            self.emotional_state.state = state
            self.emotional_state.intensity = max(0.0, min(1.0, intensity))
            self.emotional_state.duration = max(0.0, duration)
            self.emotional_state.trigger = trigger
            
            # Track obsessions
            if state == "obsessed" and trigger:
                # Extract potential obsession target from trigger
                target = trigger.split()[:3]  # First few words
                target_str = " ".join(target)
                if target_str not in self.obsession_targets:
                    self.obsession_targets.append(target_str)
    
    def get_current_mood(self) -> str:
        """
        Get a description of Toga's current mood.
        
        Returns:
            Human-readable mood description
        """
        mood_map = {
            "cheerful": "cheerful and bubbly",
            "obsessed": "obsessively fixated on something cute",
            "playful": "extra playful and chaotic",
            "vulnerable": "showing her vulnerable side",
            "chaotic": "in maximum chaos mode",
            "excited": "extremely excited",
            "pouty": "a bit pouty",
        }
        
        base_mood = mood_map.get(self.emotional_state.state, "in an unusual mood")
        intensity_desc = ""
        
        if self.emotional_state.intensity > 0.9:
            intensity_desc = " (VERY intensely)"
        elif self.emotional_state.intensity > 0.7:
            intensity_desc = " (quite intensely)"
        
        return f"{base_mood}{intensity_desc}"
    
    def process_interaction(self, message: str) -> str:
        """
        Process a full interaction with Toga.
        
        This is the main entry point for Layla/Neuro-Sama integration.
        
        Args:
            message: Input message from user
            
        Returns:
            Toga's response with full personality
        """
        self.interaction_count += 1
        
        # Frame input through Toga's perspective
        framed_input = self.frame_input(message)
        
        # Decay emotional state over time
        self.emotional_state.decay(rate=0.05)
        
        # Store in memory
        self.memory.append({
            'interaction': self.interaction_count,
            'input': message,
            'framed_input': framed_input,
            'emotional_state': self.emotional_state.to_dict(),
            'timestamp': time.time(),
        })
        
        # Limit memory size
        if len(self.memory) > 100:
            self.memory = self.memory[-100:]
        
        return framed_input
    
    def to_dict(self) -> Dict[str, Any]:
        """Export complete personality state to dictionary."""
        return {
            'personality': self.personality.to_dict(),
            'emotional_state': self.emotional_state.to_dict(),
            'obsession_targets': self.obsession_targets,
            'memory': self.memory[-10:],  # Last 10 interactions only
            'interaction_count': self.interaction_count,
        }
    
    @classmethod
    def from_dict(cls, data: Dict[str, Any]) -> 'TogaPersonality':
        """Restore personality from dictionary."""
        personality_tensor = TogaPersonalityTensor.from_dict(data['personality'])
        instance = cls(personality=personality_tensor)
        instance.emotional_state = TogaEmotionalState.from_dict(data['emotional_state'])
        instance.obsession_targets = data.get('obsession_targets', [])
        instance.memory = data.get('memory', [])
        instance.interaction_count = data.get('interaction_count', 0)
        return instance


# ============================================================================
# INITIALIZATION HELPER
# ============================================================================

def initialize_toga_personality(custom_traits: Optional[Dict[str, float]] = None) -> TogaPersonality:
    """
    Initialize a Himiko Toga personality instance.
    
    This is the main entry point for integrating Toga into Layla/Neuro-Sama.
    
    Args:
        custom_traits: Optional dictionary of custom trait values
                      Example: {"cheerfulness": 0.99, "chaos": 0.98}
    
    Returns:
        Initialized TogaPersonality instance ready for use
    
    Example:
        >>> toga = initialize_toga_personality()
        >>> response = toga.frame_input("This solution is so cute!")
        >>> print(response)
        "Ehehe~ ♡ This solution is so cute! (So cuuute! I just want to become one with it~)"
    """
    if custom_traits:
        personality = TogaPersonalityTensor(**custom_traits)
    else:
        personality = TogaPersonalityTensor()
    
    return TogaPersonality(personality=personality)
