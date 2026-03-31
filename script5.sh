#!/bin/bash
# Script 5: Open Source Manifesto Generator
# Author: Projukta Chatterjee | Reg No: 24MIP10085

echo "======================================="
echo " Open Source Manifesto Generator"
echo "======================================="
echo ""

# Taking user input
read -p "1. Name one open-source tool you use every day: " TOOL
read -p "2. In one word, what does 'freedom' mean to you? " FREEDOM
read -p "3. Name one thing you would build and share freely: " BUILD

# Date and output file
DATE=$(date '+%d %B %Y')
OUTPUT="manifesto_$(whoami).txt"

# Writing manifesto
echo "---------------------------------------" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "By: Projukta Chatterjee" >> $OUTPUT
echo "Date: $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "I believe in the power of open source. Using tools like $TOOL every day shows how collaboration can build something meaningful. To me, freedom means $FREEDOM, and it drives innovation in technology." >> $OUTPUT

echo "" >> $OUTPUT

echo "If given the opportunity, I would build $BUILD and share it openly with the world so that others can learn, improve, and benefit from it. Open source is not just code — it is a philosophy of sharing knowledge and growing together." >> $OUTPUT

echo "---------------------------------------" >> $OUTPUT

# Display output
echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT