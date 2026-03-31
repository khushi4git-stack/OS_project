#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Projukta Chatterjee | Reg No: 24MIP10085

PACKAGE="git"

echo "Checking if $PACKAGE is installed..."
echo "-----------------------------------"

# Check installation
if git --version &>/dev/null; then
    echo "$PACKAGE is installed."
    VERSION=$(git --version)
    echo "Version Info: $VERSION"
else
    echo "$PACKAGE is NOT installed."
fi

echo "-----------------------------------"

# Case statement (philosophy)
case $PACKAGE in
    git)
        echo "Git: A distributed version control system built for open collaboration and freedom."
        ;;
    apache)
        echo "Apache: The web server that powers much of the internet."
        ;;
    mysql)
        echo "MySQL: Open-source database used worldwide."
        ;;
    firefox)
        echo "Firefox: A browser that promotes an open web."
        ;;
    *)
        echo "Unknown package."
        ;;
esac