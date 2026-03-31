#!/bin/bash

# Script 2: FOSS Package Inspector
# Author: Ashutosh Kumar Singh
# Course: Open Source Software
# Software: Python

# -----------------------------------
# Package Name
# -----------------------------------

PACKAGE="python3"

echo "===================================="
echo "      FOSS Package Inspector"
echo "===================================="

# -----------------------------------
# Check if package installed
# -----------------------------------

if dpkg -l | grep -q "^ii  $PACKAGE"; then
    echo "$PACKAGE is installed."
    echo ""

    echo "Package Details:"
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'

else
    echo "$PACKAGE is NOT installed."
fi

echo ""
echo "------------------------------------"
echo "Open Source Philosophy Notes"
echo "------------------------------------"

# -----------------------------------
# Case Statement
# -----------------------------------

case $PACKAGE in

python3)
echo "Python: A community-driven language built for simplicity and innovation."
;;

git)
echo "Git: Distributed version control empowering collaborative development."
;;

apache2)
echo "Apache: The web server that helped build the open internet."
;;

mysql-server)
echo "MySQL: Open-source database powering millions of applications."
;;

*)
echo "Unknown package — open source empowers innovation."
;;

esac

echo ""
echo "===================================="
echo "Inspection Complete"
echo "===================================="