#!/bin/bash
# Script 4: Log File Analyzer
# Author: Kunal | Course: Open Source Software
# Purpose: Reads a log file and counts lines matching a keyword
# Usage: bash script4.sh /var/log/dpkg.log error

# --- Get arguments from command line ---
LOGFILE=$1
KEYWORD=${2:-"error"}   # Default keyword is 'error'
COUNT=0

# --- Check if file was provided and exists ---
if [ -z "$LOGFILE" ]; then
    echo "Usage: bash script4.sh <logfile> <keyword>"
    exit 1
fi

if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

echo "================================"
echo "  Log File Analyzer"
echo "================================"
echo "File    : $LOGFILE"
echo "Keyword : $KEYWORD"
echo ""

# --- Loop through each line and count matches ---
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# --- Print summary ---
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"
echo ""

# --- Print last 5 matching lines ---
echo "--- Last 5 matching lines ---"
grep -i "$KEYWORD" "$LOGFILE" | tail -5
echo "================================"
