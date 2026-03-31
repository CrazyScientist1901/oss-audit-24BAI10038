#!/bin/bash
# Script 1: System Identity Report
# Author: Rithika Pillai | Course: Open Source Software

# --- Variables
STUDENT_NAME="Rithika Pillai"
SOFTWARE_CHOICE="Python"

# --- System Info Gathering
KERNEL=$(uname -r)
USER_NAME=$(whoami)
# More portable uptime format (works on all Linux systems)
UPTIME=$(uptime | awk -F'( |,|:)+' '{print $6" hours, "$7" minutes"}')
# Alternative if you prefer the pretty format and have it available:
# UPTIME=$(uptime -p 2>/dev/null || echo "Uptime info not available")
DISTRO=$(grep "^PRETTY_NAME" /etc/os-release | cut -d '"' -f 2)
CURRENT_DATE=$(date)
HOME_DIR=$HOME

# --- Display
echo "=========================================="
echo "        Open Source Software Audit"
echo "=========================================="
echo "Student Name   : $STUDENT_NAME"
echo "Software Pick  : $SOFTWARE_CHOICE"
echo "------------------------------------------"
echo "Linux Distro   : $DISTRO"
echo "Kernel Version : $KERNEL"
echo "Current User   : $USER_NAME"
echo "Home Directory : $HOME_DIR"
echo "System Uptime  : $UPTIME"
echo "Current Date   : $CURRENT_DATE"
echo "------------------------------------------"
echo "Note: This OS is covered by the GNU General Public License (GPL)."
echo "=========================================="
