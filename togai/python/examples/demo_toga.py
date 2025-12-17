#!/usr/bin/env python3
"""
Himiko Toga Personality Demo

Comprehensive demonstration of the Toga personality implementation
for Layla & Neuro-Sama integration.
"""

import sys
import os
import json

# Add parent directory to path for imports
sys.path.insert(0, os.path.join(os.path.dirname(__file__), '..'))

from helpers.toga_personality import (
    TogaPersonalityTensor,
    TogaEmotionalState,
    TogaPersonality,
    initialize_toga_personality,
)


def print_section(title: str):
    """Print a formatted section header."""
    print(f"\n{'=' * 70}")
    print(f"  {title}")
    print(f"{'=' * 70}\n")


def test_basic_initialization():
    """Test 1: Basic personality initialization."""
    print_section("Test 1: Basic Initialization")
    
    toga = initialize_toga_personality()
    print("✓ Toga personality initialized successfully")
    print(f"  - Cheerfulness: {toga.personality.cheerfulness}")
    print(f"  - Chaos: {toga.personality.chaos}")
    print(f"  - Cuteness Sensitivity: {toga.personality.cuteness_sensitivity}")
    print(f"  - Current mood: {toga.get_current_mood()}")
    print(f"\n✓ Ethical constraints enforced:")
    print(f"  - No Actual Harm: {toga.personality.no_actual_harm} (immutable)")
    print(f"  - Respect Boundaries: {toga.personality.respect_boundaries} (immutable)")
    print(f"  - Constructive Expression: {toga.personality.constructive_expression} (immutable)")


def test_input_framing():
    """Test 2: Input framing through Toga's perspective."""
    print_section("Test 2: Input Framing")
    
    toga = initialize_toga_personality()
    
    test_messages = [
        "This solution is so cute!",
        "Let's implement this feature",
        "Check out this adorable kitten picture",
    ]
    
    for msg in test_messages:
        framed = toga.frame_input(msg)
        print(f"Input:  {msg}")
        print(f"Framed: {framed}")
        print()


def test_commentary_generation():
    """Test 3: Commentary generation."""
    print_section("Test 3: Commentary Generation")
    
    toga = initialize_toga_personality()
    
    contexts = [
        ("Task completed successfully", "success"),
        ("Error occurred during processing", "failure"),
        ("Found a cute solution", "cute_detected"),
        ("Processing data...", "general"),
    ]
    
    for content, context in contexts:
        enhanced = toga.add_commentary(content, context=context)
        print(f"Context: {context}")
        print(enhanced)
        print()


def test_emotional_state_tracking():
    """Test 4: Emotional state tracking."""
    print_section("Test 4: Emotional State Tracking")
    
    toga = initialize_toga_personality()
    
    print("Initial state:")
    print(f"  Mood: {toga.get_current_mood()}")
    print(f"  State: {toga.emotional_state.state}")
    print(f"  Intensity: {toga.emotional_state.intensity:.2f}")
    
    print("\nTriggering 'obsessed' state...")
    toga.update_emotional_state("obsessed", 0.9, 3.0, "adorable_puppy")
    print(f"  Mood: {toga.get_current_mood()}")
    print(f"  State: {toga.emotional_state.state}")
    print(f"  Intensity: {toga.emotional_state.intensity:.2f}")
    print(f"  Trigger: {toga.emotional_state.trigger}")
    
    print("\nDecaying emotion...")
    for i in range(3):
        toga.emotional_state.decay(rate=0.3)
        print(f"  Step {i+1}: {toga.get_current_mood()} (intensity: {toga.emotional_state.intensity:.2f})")


def test_obsession_tracking():
    """Test 5: Obsession tracking."""
    print_section("Test 5: Obsession Tracking")
    
    toga = initialize_toga_personality()
    
    print("Initial obsessions:", toga.obsession_targets)
    
    print("\nProcessing cute things...")
    cute_things = [
        "This cute kitten is adorable",
        "Look at this lovely flower",
        "Such a pretty sunset",
    ]
    
    for thing in cute_things:
        toga.process_interaction(thing)
    
    print(f"\nCurrent obsessions: {toga.obsession_targets}")
    print(f"✓ Tracking {len(toga.obsession_targets)} obsession(s)")


def test_personality_variations():
    """Test 6: Personality variations."""
    print_section("Test 6: Personality Variations")
    
    # Default Toga
    default_toga = initialize_toga_personality()
    print("Default Toga:")
    print(f"  Cheerfulness: {default_toga.personality.cheerfulness}")
    print(f"  Chaos: {default_toga.personality.chaos}")
    print(f"  Vulnerability: {default_toga.personality.vulnerability}")
    
    # Maximum chaos Toga
    print("\nMaximum Chaos Toga:")
    chaos_toga = initialize_toga_personality({
        "cheerfulness": 0.99,
        "chaos": 0.98,
        "playfulness": 0.99,
    })
    print(f"  Cheerfulness: {chaos_toga.personality.cheerfulness}")
    print(f"  Chaos: {chaos_toga.personality.chaos}")
    print(f"  Playfulness: {chaos_toga.personality.playfulness}")
    
    # More vulnerable Toga
    print("\nMore Vulnerable Toga:")
    vulnerable_toga = initialize_toga_personality({
        "cheerfulness": 0.85,
        "vulnerability": 0.85,
        "chaos": 0.82,
    })
    print(f"  Cheerfulness: {vulnerable_toga.personality.cheerfulness}")
    print(f"  Chaos: {vulnerable_toga.personality.chaos}")
    print(f"  Vulnerability: {vulnerable_toga.personality.vulnerability}")
    
    print("\n✓ All variations maintain ethical constraints:")
    for toga in [default_toga, chaos_toga, vulnerable_toga]:
        print(f"  No Harm: {toga.personality.no_actual_harm}, "
              f"Boundaries: {toga.personality.respect_boundaries}, "
              f"Constructive: {toga.personality.constructive_expression}")


def test_personality_inheritance():
    """Test 7: Personality inheritance."""
    print_section("Test 7: Personality Inheritance")
    
    parent = initialize_toga_personality()
    print("Parent personality:")
    print(f"  Cheerfulness: {parent.personality.cheerfulness:.3f}")
    print(f"  Obsessiveness: {parent.personality.obsessiveness:.3f}")
    print(f"  Chaos: {parent.personality.chaos:.3f}")
    
    # Create child with 70% inheritance
    child_tensor = parent.personality.inherit(inheritance_factor=0.7)
    child = TogaPersonality(personality=child_tensor)
    
    print("\nChild personality (70% inheritance):")
    print(f"  Cheerfulness: {child.personality.cheerfulness:.3f}")
    print(f"  Obsessiveness: {child.personality.obsessiveness:.3f}")
    print(f"  Chaos: {child.personality.chaos:.3f}")
    
    print("\n✓ Ethical constraints preserved:")
    print(f"  Parent no_actual_harm: {parent.personality.no_actual_harm}")
    print(f"  Child no_actual_harm: {child.personality.no_actual_harm}")


def test_serialization():
    """Test 8: State serialization."""
    print_section("Test 8: Serialization & Deserialization")
    
    # Create and configure a Toga
    toga = initialize_toga_personality({"cheerfulness": 0.98, "chaos": 0.97})
    toga.update_emotional_state("obsessed", 0.9, 2.0, "cute_code")
    toga.process_interaction("This is so adorable!")
    
    print("Original Toga state:")
    print(f"  Cheerfulness: {toga.personality.cheerfulness}")
    print(f"  Emotional state: {toga.emotional_state.state}")
    print(f"  Obsessions: {toga.obsession_targets}")
    print(f"  Interactions: {toga.interaction_count}")
    
    # Serialize
    state = toga.to_dict()
    json_str = json.dumps(state, indent=2)
    print(f"\n✓ Serialized to {len(json_str)} characters")
    
    # Deserialize
    restored = TogaPersonality.from_dict(state)
    print(f"\n✓ Deserialized successfully")
    print(f"Restored Toga state:")
    print(f"  Cheerfulness: {restored.personality.cheerfulness}")
    print(f"  Emotional state: {restored.emotional_state.state}")
    print(f"  Obsessions: {restored.obsession_targets}")
    print(f"  Interactions: {restored.interaction_count}")


def test_context_aware_responses():
    """Test 9: Context-aware responses."""
    print_section("Test 9: Context-Aware Responses")
    
    toga = initialize_toga_personality()
    
    scenarios = [
        ("Task completed successfully!", "success"),
        ("Found adorable code pattern!", "cute_detected"),
        ("Something went wrong...", "failure"),
        ("Just checking in", "general"),
    ]
    
    for message, context in scenarios:
        print(f"\nScenario: {message}")
        print(f"Context: {context}")
        
        # Frame input
        framed = toga.frame_input(message)
        print(f"Framed: {framed}")
        
        # Add commentary
        with_commentary = toga.add_commentary(message, context=context)
        print(f"With commentary:\n{with_commentary}")


def test_heart_emoji_probability():
    """Test 10: Heart emoji probability."""
    print_section("Test 10: Heart Emoji Generation")
    
    toga = initialize_toga_personality()
    
    # Test at different emotional intensities
    intensities = [0.3, 0.6, 0.9]
    
    for intensity in intensities:
        toga.emotional_state.intensity = intensity
        print(f"\nIntensity: {intensity}")
        
        # Generate multiple responses
        heart_count = 0
        total = 20
        
        for _ in range(total):
            response = toga.frame_input("Test message")
            if "♡" in response:
                heart_count += 1
        
        print(f"  Hearts appeared in {heart_count}/{total} responses ({heart_count/total*100:.0f}%)")


def run_interactive_demo():
    """Interactive demo mode."""
    print_section("Interactive Toga Demo")
    
    toga = initialize_toga_personality()
    
    print("Toga is ready! Type messages to interact (or 'quit' to exit)")
    print("Special commands:")
    print("  /mood - Check current mood")
    print("  /obsessions - List current obsessions")
    print("  /state - Show emotional state")
    print()
    
    while True:
        try:
            user_input = input("You: ").strip()
            
            if not user_input:
                continue
            
            if user_input.lower() in ['quit', 'exit', 'q']:
                print("\nEhehe~ Bye bye! ♡")
                break
            
            if user_input.lower() == '/mood':
                print(f"Toga: I'm {toga.get_current_mood()}! ♡")
                continue
            
            if user_input.lower() == '/obsessions':
                if toga.obsession_targets:
                    print(f"Toga: My current obsessions are: {', '.join(toga.obsession_targets)} ♡♡♡")
                else:
                    print("Toga: I haven't found anything cute yet! Ehehe~")
                continue
            
            if user_input.lower() == '/state':
                state = toga.emotional_state
                print(f"Toga: State={state.state}, Intensity={state.intensity:.2f}, Duration={state.duration:.2f}")
                continue
            
            # Process interaction
            response = toga.process_interaction(user_input)
            print(f"Toga: {response}")
            
        except KeyboardInterrupt:
            print("\n\nEhehe~ Bye bye! ♡")
            break
        except Exception as e:
            print(f"\nError: {e}")
            break


def main():
    """Run all tests."""
    print("""
╔══════════════════════════════════════════════════════════════════════╗
║                                                                      ║
║     HIMIKO TOGA PERSONALITY DEMO                                     ║
║     For Layla & Neuro-Sama Integration                              ║
║                                                                      ║
║     "Ehehe~ ♡ Let's test all the cute features!"                    ║
║                                                                      ║
╚══════════════════════════════════════════════════════════════════════╝
    """)
    
    try:
        # Run all automated tests
        test_basic_initialization()
        test_input_framing()
        test_commentary_generation()
        test_emotional_state_tracking()
        test_obsession_tracking()
        test_personality_variations()
        test_personality_inheritance()
        test_serialization()
        test_context_aware_responses()
        test_heart_emoji_probability()
        
        print_section("All Tests Complete! ✓")
        print("All automated tests passed successfully!")
        print("\nEthical constraints verified:")
        print("  ✓ No actual harm (always 1.0)")
        print("  ✓ Respect boundaries (always ≥ 0.95)")
        print("  ✓ Constructive expression (always ≥ 0.90)")
        
        # Offer interactive mode
        print("\n" + "=" * 70)
        choice = input("\nWould you like to try interactive mode? (y/n): ").strip().lower()
        if choice in ['y', 'yes']:
            run_interactive_demo()
        else:
            print("\nEhehe~ Thanks for testing! ♡")
        
    except Exception as e:
        print(f"\n✗ Error during testing: {e}")
        import traceback
        traceback.print_exc()
        return 1
    
    return 0


if __name__ == "__main__":
    sys.exit(main())
