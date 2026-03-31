#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Rithika
# Course: Open Source Software

echo "=========================================="
echo "   Open Source Manifesto Generator"
echo "=========================================="
echo "Answer three questions to generate your manifesto."
echo

# Interactive user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Get current date for the document
DATE=$(date +'%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Compose the paragraph
{
    echo "Personal Open Source Manifesto"
    echo "Generated on: $DATE"
    echo "------------------------------------------"
    echo "I believe in a world where knowledge is shared. Every day, I use $TOOL"
    echo "to navigate the digital landscape. To me, the essence of open source"
    echo "is '$FREEDOM'. This is why I am committed to building $BUILD"
    echo "and sharing it freely with the community, standing on the shoulders of giants."
    echo "------------------------------------------"
} > "$OUTPUT" # Write to file

echo
echo "Success! Your manifesto has been saved to: $OUTPUT"
echo "------------------------------------------"
cat "$OUTPUT" # Display the result
