#!/bin/bash

# Script 3: Disk and Permission Auditor
# Author: Ashutosh Kumar Singh
# Course: Open Source Software
# Software: Python

echo "========================================"
echo "      Disk and Permission Auditor"
echo "========================================"
echo ""

# Important directories list
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------------------------"

# Loop through directories
for DIR in "${DIRS[@]}"; do

    if [ -d "$DIR" ]; then

        # Get permissions
        PERMS=$(ls -ld $DIR | awk '{print $1}')
        
        # Get owner
        OWNER=$(ls -ld $DIR | awk '{print $3}')
        
        # Get group
        GROUP=$(ls -ld $DIR | awk '{print $4}')
        
        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "Directory : $DIR"
        echo "Permissions : $PERMS"
        echo "Owner : $OWNER"
        echo "Group : $GROUP"
        echo "Size : $SIZE"
        echo "----------------------------------------"

    else
        echo "$DIR does not exist on this system"
    fi

done

echo ""
echo "========================================"
echo "Python Configuration Directory Check"
echo "========================================"

# Python config directories
PYTHON_DIRS=(
"/usr/lib/python3"
"/usr/local/lib/python3"
"/etc/python3"
)

for PYDIR in "${PYTHON_DIRS[@]}"; do

    if [ -d "$PYDIR" ]; then

        PERMS=$(ls -ld $PYDIR | awk '{print $1, $3, $4}')
        
        echo "Python Directory Found: $PYDIR"
        echo "Permissions and Owner: $PERMS"
        echo "----------------------------------------"

    else

        echo "Python Directory Not Found: $PYDIR"

    fi

done

echo ""
echo "========================================"
echo "Audit Complete"
echo "========================================"