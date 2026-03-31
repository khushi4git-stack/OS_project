#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Khushi Gupta | Reg No: 24MIP10111

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "======================================="
echo "     Directory Audit Report"
echo "======================================="

# Loop through directories
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        
        # Get size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo "======================================="

# Check Git config directory (important for your chosen software)
GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]; then
    PERM=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo "Git Config File Found!"
    echo "Permissions: $PERM"
else
    echo "Git config file not found."
fi
