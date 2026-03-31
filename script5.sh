#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Kunal | Course: Open Source Software
# Purpose: Asks user 3 questions and generates a personal manifesto

echo "================================"
echo "  Open Source Manifesto Generator"
echo "================================"
echo "Answer three questions to generate your manifesto."
echo ""

# --- Ask user three questions using read ---
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# --- Get current date and username ---
DATE=$(date '+%d %B %Y')
AUTHOR=$(whoami)
OUTPUT="manifesto_$(whoami).txt"

# --- Compose the manifesto paragraph ---
MANIFESTO="Open Source Manifesto — $AUTHOR — $DATE

I believe in the power of open source. Every day I use $TOOL,
a tool built freely by people who chose to share their work with the world.
To me, freedom means $FREEDOM — and that is exactly what open source represents.
One day I will build $BUILD and share it freely, because knowledge grows
when it is given away. Standing on the shoulders of giants, I choose
to be a giant for those who come after me."

# --- Save manifesto to file ---
echo "$MANIFESTO" > $OUTPUT

echo ""
echo "================================"
echo "  Your Manifesto"
echo "================================"
cat $OUTPUT
echo "================================"
echo "Manifesto saved to $OUTPUT"
