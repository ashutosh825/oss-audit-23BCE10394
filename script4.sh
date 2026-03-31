#!/bin/bash

# Script 4: Log File Analyzer
# Author: Ashutosh Kumar Singh
# Course: Open Source Software
# Software: Python

# Usage: ./script4.sh /var/log/syslog error

LOGFILE=$1
KEYWORD=${2:-"error"}

COUNT=0

echo "======================================"
echo "        Log File Analyzer"
echo "======================================"

# Check if file exists
if [ ! -f "$LOGFILE" ]; then
    echo "Error: File $LOGFILE not found."
    exit 1
fi

# Check if file empty (retry style loop)
while [ ! -s "$LOGFILE" ]; do
    echo "Log file is empty. Waiting for logs..."
    sleep 2
done

echo "Analyzing file: $LOGFILE"
echo "Searching keyword: $KEYWORD"
echo ""

# Read file line by line
while IFS= read -r LINE
do
    if echo "$LINE" | grep -iq "$KEYWORD"
    then
        COUNT=$((COUNT + 1))
    fi

done < "$LOGFILE"

echo "--------------------------------------"
echo "Keyword '$KEYWORD' found $COUNT times"
echo "--------------------------------------"

echo ""
echo "Last 5 matching lines:"
echo "--------------------------------------"

grep -i "$KEYWORD" "$LOGFILE" | tail -5

echo ""
echo "======================================"
echo "Analysis Complete"
echo "======================================"