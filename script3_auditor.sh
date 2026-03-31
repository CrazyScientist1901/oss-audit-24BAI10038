#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Rithika Pillai
# Course: Open Source Software

# List of important system directories to audit
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=========================================="
echo "        Directory Audit Report"
echo "=========================================="
printf "%-20s %-15s %-12s %s\n" "Directory" "Permissions" "Owner" "Size"
echo "------------------------------------------"

# Loop through each directory
for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extract permissions, owner (using awk)
        PERMS=$(ls -ld "$DIR" | awk '{print $1}')
        OWNER=$(ls -ld "$DIR" | awk '{print $3}')
        # Get human-readable size
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        # Format output with printf for better alignment
        printf "%-20s %-15s %-12s %s\n" "$DIR" "$PERMS" "$OWNER" "$SIZE"
    else
        echo "  $DIR does not exist on this system"
    fi
done

echo "------------------------------------------"

# Checking configuration directory for your specific software (Python)
CONF_DIR="/usr/lib/python3"
if [ -d "$CONF_DIR" ]; then
    echo "Software Config ($CONF_DIR) exists."
    ls -ld "$CONF_DIR" | awk '{print "  Permissions: " $1 " | Owner: " $3 " | Group: " $4}'
else
    echo "Note: Custom config directory $CONF_DIR not found."
fi
echo "=========================================="
