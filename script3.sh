#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Kunal | Course: Open Source Software
# Purpose: Loops through key directories and reports permissions and size

# --- List of important system directories ---
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "================================"
echo "  Directory Audit Report"
echo "================================"

# --- Loop through each directory ---
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Get permissions, owner, group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)
        echo "$DIR => Permissions: $PERMS | Size: $SIZE"
    else
        echo "$DIR does not exist on this system"
    fi
done

echo ""
echo "--- Python Config Directory Check ---"

# --- Check if Python exists in usr/lib ---
PYTHON_DIR="/usr/lib/python3"

if [ -d "$PYTHON_DIR" ]; then
    PERMS=$(ls -ld $PYTHON_DIR | awk '{print $1, $3, $4}')
    echo "Python dir found: $PYTHON_DIR"
    echo "Permissions: $PERMS"
else
    echo "Python directory not found at $PYTHON_DIR"
fi
echo "================================"
