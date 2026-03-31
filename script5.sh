#!/bin/bash

# Script 5: Open Source Manifesto Generator
# Author: Ashutosh Kumar Singh
# Course: Open Source Software
# Software: Python

echo "========================================="
echo "   Open Source Manifesto Generator"
echo "========================================="
echo ""

echo "Answer three questions to generate your manifesto."
echo ""

# User input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and file
DATE=$(date '+%d %B %Y')
USER=$(whoami)
OUTPUT="manifesto_$USER.txt"

echo ""
echo "Generating Manifesto..."
echo ""

# Writing Manifesto
echo "=========================================" > $OUTPUT
echo "        Open Source Manifesto" >> $OUTPUT
echo "=========================================" >> $OUTPUT
echo "Author : $USER" >> $OUTPUT
echo "Date   : $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source software." >> $OUTPUT
echo "Every day, I rely on tools like $TOOL that are built by communities" >> $OUTPUT
echo "who believe in collaboration and sharing." >> $OUTPUT
echo "" >> $OUTPUT

echo "To me, freedom means $FREEDOM. Open source allows developers" >> $OUTPUT
echo "to innovate without restrictions and build solutions" >> $OUTPUT
echo "that benefit everyone." >> $OUTPUT
echo "" >> $OUTPUT

echo "In the future, I would like to build $BUILD and share" >> $OUTPUT
echo "it freely with the world so others can learn," >> $OUTPUT
echo "improve, and innovate further." >> $OUTPUT
echo "" >> $OUTPUT

echo "Open source is not just about code — it is about community," >> $OUTPUT
echo "collaboration, and collective progress." >> $OUTPUT
echo "" >> $OUTPUT

echo "=========================================" >> $OUTPUT

echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT