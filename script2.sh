#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Kunal | Course: Open Source Software
# Purpose: Checks if Python is installed and displays package info

# --- Define the package to inspect ---
PACKAGE="python3"

# --- Check if the package is installed ---
if dpkg -l $PACKAGE &>/dev/null; then
    echo "$PACKAGE is installed on this system."
    echo ""
    echo "--- Package Details ---"
    dpkg -l $PACKAGE | grep -E "^ii" | awk '{print "Version : "$3"\nStatus  : Installed"}'
    echo "License : PSF License (Python Software Foundation)"
    echo ""
else
    echo "$PACKAGE is NOT installed."
fi

# --- Case statement: philosophy note about the package ---
echo "--- Open Source Philosophy ---"
case $PACKAGE in
    python3)
        echo "Python: a language built entirely by community volunteers since 1991." ;;
    git)
        echo "Git: the tool Linus built when proprietary version control failed him." ;;
    firefox)
        echo "Firefox: a nonprofit browser fighting for an open web." ;;
    vlc)
        echo "VLC: built by students in Paris -- plays anything, free forever." ;;
    *)
        echo "$PACKAGE: an open source tool shaping the modern world." ;;
esac
