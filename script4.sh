#!/bin/bash
# Script 4: Log File Analyzer
# Author: Projukta Chatterjee | Reg No: 24MIP10085

# Input arguments
LOGFILE=$1
KEYWORD=${2:-"error"}   # default keyword = error
COUNT=0

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File not found!"
    echo "Usage: bash script4.sh <logfile> [keyword]"
    exit 1
fi

# Check if file is empty
if [ ! -s "$LOGFILE" ]; then
    echo "File is empty. Please provide a valid log file."
    exit 1
fi

echo "Analyzing file: $LOGFILE"
echo "Searching for keyword: $KEYWORD"
echo "----------------------------------"

# Read file line by line
while IFS= read -r LINE; do
    if echo "$LINE" | grep -iq "$KEYWORD"; then
        COUNT=$((COUNT + 1))
    fi
done < "$LOGFILE"

# Output result
echo "Keyword '$KEYWORD' found $COUNT times."

echo "----------------------------------"
echo "Last 5 matching lines:"

grep -i "$KEYWORD" "$LOGFILE" | tail -5
