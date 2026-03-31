#!/bin/bash
# Script 1: System Identity Report
# Author: Projukta Chatterjee

STUDENT_NAME="Projukta Chatterjee"
SOFTWARE="Git"

KERNEL=$(uname -r)
USER=$(whoami)
HOME_DIR=$HOME
UPTIME=$(uptime -p)
DATE=$(date)

echo "==============================="
echo " Open Source Audit"
echo "==============================="
echo "Name       : $STUDENT_NAME"
echo "Software   : $SOFTWARE"
echo "Kernel     : $KERNEL"
echo "User       : $USER"
echo "Home Dir   : $HOME_DIR"
echo "Uptime     : $UPTIME"
echo "Date & Time: $DATE"
echo "License    : GPL"
echo "==============================="