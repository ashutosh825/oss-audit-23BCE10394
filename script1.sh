#!/bin/bash

# Script 1: System Identity Report
# Author: Ashutosh Kumar Singh
# Course: Open Source Software
# Software Chosen: Python

# -------------------------------
# Variables
# -------------------------------

STUDENT_NAME="Ashutosh Kumar Singh"
SOFTWARE_CHOICE="Python"

# -------------------------------
# System Information
# -------------------------------

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DATE_TIME=$(date)

# Get Linux Distribution Name
DISTRO=$(cat /etc/os-release | grep PRETTY_NAME | cut -d '"' -f2)

# Get Home Directory
HOME_DIR=$HOME

# -------------------------------
# Display Output
# -------------------------------

echo "==========================================="
echo "   Open Source Audit — $STUDENT_NAME"
echo "==========================================="

echo "Chosen Software     : $SOFTWARE_CHOICE"
echo "Linux Distribution  : $DISTRO"
echo "Kernel Version      : $KERNEL"
echo "Logged-in User      : $USER_NAME"
echo "Home Directory      : $HOME_DIR"
echo "System Uptime       : $UPTIME"
echo "Current Date & Time : $DATE_TIME"

echo ""
echo "-------------------------------------------"
echo "Open Source License Information"
echo "-------------------------------------------"
echo "This Linux system is covered under GNU GPL"
echo "This ensures freedom to use, modify and distribute"
echo ""

echo "==========================================="
echo "System Identity Report Complete"
echo "==========================================="
