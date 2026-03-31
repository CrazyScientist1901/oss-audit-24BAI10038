#!/bin/bash
# Script 2: FOSS Package Inspector
# Author: Rithika Pillai|Course: Open Source Software

# Define the package to check
PACKAGE="python3"

echo "--- FOSS Package Audit for: $PACKAGE ---"

# Check if the package is installed
if dpkg -s "$PACKAGE" >/dev/null 2>&1; then
    echo "Status: $PACKAGE is installed on this system."
    echo "------------------------------------------"
    # Extract Version and License info using pipe and grep
    dpkg -s "$PACKAGE" | grep -E 'Package:|Version:|Section:'
    echo "------------------------------------------"
    # Case statement for philosophical notes
    case $PACKAGE in
        "git")
            echo "Philosophy: Distributed version control that empowered global collaboration."
            ;;
        "vlc")
            echo "Philosophy: The student-built player that proved open codecs win."
            ;;
        "apache2"|"httpd")
            echo "Philosophy: The foundation of the free and open web."
           ;;
        "python3")
            echo "Philosophy: A language shaped entirely by community consensus."
            ;;
        *)
            echo "Philosophy: A valuable tool in the open-source ecosystem."
            ;;
    esac
else
    echo "Status: $PACKAGE is NOT installed."
    echo "To install it, run: sudo apt update && sudo apt install $PACKAGE"
fi
