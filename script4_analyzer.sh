#!/bin/bash
# Script 4: Log File Analyzer
# Usage: ./script4_analyzer.sh
# Author: Rithika Pillai

LOGFILE=$1
KEYWORD=${2:-"error"} # Default keyword is 'error' if not provided
COUNT=0

# --- File Validation
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# --- Analysis Loop
echo "Analyzing $LOGFILE for '$KEYWORD'..."

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        ((COUNT++))
    fi
done < "$LOGFILE"

# --- Summary and Tail Output
echo "------------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times in $LOGFILE"

if [ $COUNT -gt 0 ]; then
    echo "Last 5 matching lines:"
    grep -i "$KEYWORD" "$LOGFILE" | tail -n 5
fi
echo "------------------------------------------"
