#!/bin/bash
# TOGA Personality Demo Runner
# Demonstrates the Himiko Toga personality implementation

echo "╔══════════════════════════════════════════════════════════════════════╗"
echo "║                                                                      ║"
echo "║     TOGA PERSONALITY SYSTEM                                          ║"
echo "║     Himiko Toga Implementation for Layla & Neuro-Sama               ║"
echo "║                                                                      ║"
echo "║     Ehehe~ ♡ Let's demonstrate all the cute features!               ║"
echo "║                                                                      ║"
echo "╚══════════════════════════════════════════════════════════════════════╝"
echo ""

# Check Python installation
if ! command -v python3 &> /dev/null; then
    echo "❌ Python 3 is required but not found."
    echo "   Please install Python 3.7+ to run this demo."
    exit 1
fi

echo "✓ Python 3 found: $(python3 --version)"
echo ""

# Show file structure
echo "📂 File Structure:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
tree -L 3 python/ 2>/dev/null || find python -type f -name "*.py" -o -name "*.md" -o -name "*.txt" | grep -v __pycache__ | sort
echo ""

# Show implementation stats
echo "📊 Implementation Statistics:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "Total Lines of Code:"
find python -name "*.py" | grep -v __pycache__ | xargs wc -l | tail -1
echo ""
echo "Documentation Lines:"
find python -name "*.md" | xargs wc -l | tail -1
echo ""

# Show key features
echo "🎭 Key Features Implemented:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo "  ✓ Personality Tensor (8 mutable traits + 3 ethical constraints)"
echo "  ✓ Emotional State System (7 states with intensity/duration)"
echo "  ✓ Obsession Tracking (detects and tracks 'cute' things)"
echo "  ✓ Speech Pattern Generation (ehehe~, hearts, authentic expressions)"
echo "  ✓ Input Framing (personality-driven message processing)"
echo "  ✓ Commentary Generation (context-aware personality overlay)"
echo "  ✓ Personality Inheritance (parent → child with variation)"
echo "  ✓ State Serialization (save/load complete state)"
echo "  ✓ Layla Integration (character system, voice, avatar)"
echo "  ✓ Neuro-Sama Integration (cognitive framework, WebSocket)"
echo ""

# Quick demo
echo "🎪 Quick Demonstration:"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
python3 << 'PYTHON_DEMO'
import sys
sys.path.insert(0, 'python')
from helpers.toga_personality import initialize_toga_personality

toga = initialize_toga_personality()

print("\n1. Input Framing:")
print("-" * 70)
msg = "This code is so cute!"
framed = toga.frame_input(msg)
print(f"   Input:  {msg}")
print(f"   Output: {framed}")

print("\n2. Commentary Generation:")
print("-" * 70)
content = "Task completed successfully"
enhanced = toga.add_commentary(content, context="success")
print(f"   {enhanced}")

print("\n3. Emotional State:")
print("-" * 70)
toga.update_emotional_state("obsessed", 0.9, 3.0, "adorable_feature")
print(f"   Current mood: {toga.get_current_mood()}")
print(f"   Obsessions: {toga.obsession_targets}")

print("\n4. Personality Traits:")
print("-" * 70)
print(f"   Cheerfulness: {toga.personality.cheerfulness}")
print(f"   Chaos: {toga.personality.chaos}")
print(f"   Cuteness Sensitivity: {toga.personality.cuteness_sensitivity}")

print("\n5. Ethical Constraints (IMMUTABLE):")
print("-" * 70)
print(f"   No Actual Harm: {toga.personality.no_actual_harm} ✓")
print(f"   Respect Boundaries: {toga.personality.respect_boundaries} ✓")
print(f"   Constructive Expression: {toga.personality.constructive_expression} ✓")

print("\n✓ Demo completed successfully!")
print("  Ehehe~ ♡ All systems working perfectly!")
PYTHON_DEMO

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""

# Offer full demo
echo "Would you like to run the full test suite? (y/n)"
read -r response
if [[ "$response" =~ ^[Yy]$ ]]; then
    echo ""
    echo "Running full test suite..."
    echo ""
    python3 python/examples/demo_toga.py
else
    echo ""
    echo "Ehehe~ Thanks for checking out the demo! ♡"
    echo ""
    echo "To run the full test suite later:"
    echo "  $ python3 python/examples/demo_toga.py"
    echo ""
    echo "To use Toga in your code:"
    echo "  from python.helpers.toga_personality import initialize_toga_personality"
    echo "  toga = initialize_toga_personality()"
    echo ""
fi

echo "╔══════════════════════════════════════════════════════════════════════╗"
echo "║  Ready to embrace cheerful chaos? 🎭♡                                ║"
echo "║  'Ehehe~ I just want to become one with the things I love! ♡'        ║"
echo "╚══════════════════════════════════════════════════════════════════════╝"
