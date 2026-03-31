#!/bin/bash
# Script 1: System Identity Report
# Author: Kunal | Course: Open Source Software

# --- Variables ---
STUDENT_NAME="Kunal"
SOFTWARE_CHOICE="Python"

# --- Gather system info ---
KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(lsb_release -d | cut -f2)
CURRENT_DATE=$(date '+%d %B %Y, %H:%M:%S')

# --- Display the report ---
echo "================================"
echo "  Open Source Audit — $STUDENT_NAME"
echo "================================"
echo "Software Chosen : $SOFTWARE_CHOICE"
echo "Distro          : $DISTRO"
echo "Kernel          : $KERNEL"
echo "User            : $USER_NAME"
echo "Uptime          : $UPTIME"
echo "Date & Time     : $CURRENT_DATE"
echo "================================"
echo "OS License: The Linux Kernel is licensed under GPL v2."
echo "Python is licensed under the PSF License (open source)."
echo "================================"
