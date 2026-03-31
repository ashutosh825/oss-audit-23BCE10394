# oss-audit-23BCE10394
Open Source Audit Report File

**STUDENT NAME:** Ashutosh Kumar Singh <br>
**ROLL NO:** 23BCE10394 <br>
**CHOSEN SOFTWARE:** Python <br>
<br>
<br>
**SCRIPT 1**

Step 1 - Create script file: _nano script1.sh_ <br>
Step 2 - Give execute permissions: _chmod +x script1.sh_ <br>
Step 3 - Run script: _./script1.sh_ <br>

This script generates a system identity report by collecting system information using Linux commands. It uses variables and command substitution to store values such as kernel version, user name, system uptime, and Linux distribution. The script then formats and displays the information in a structured output. Additionally, the script prints information about the open-source license governing the Linux system. This script demonstrates basic shell scripting concepts such as variables, command substitution, and output formatting.
<br>
<br>
**SCRIPT 2**

Step 1 - Create script file: _nano script2.sh_ <br>
Step 2 - Give execute permissions: _chmod +x script2.sh_ <br>
Step 3 - Run script: _./script2.sh_ <br>

This script checks whether Python is installed on the Linux system using the dpkg command. If the package is installed, the script displays package details such as version, maintainer, and description. The script then uses a case statement to print a philosophical message related to open-source software. This script demonstrates conditional statements, package inspection, and case statement usage in shell scripting.
<br>
<br>
**SCRIPT 3**

Step 1 - Create script file: _nano script3.sh_ <br>
Step 2 - Give execute permissions: _chmod +x script3.sh_ <br>
Step 3 - Run script: _./script3.sh_ <br>

This script audits important Linux directories and reports their size, ownership, and permissions. A for loop is used to iterate through system directories such as /etc, /var/log, and /home. The script uses ls -ld to retrieve directory permissions and ownership information. The du -sh command is used to determine directory size. Additionally, the script checks Python configuration directories and displays their permissions. This script demonstrates looping, directory auditing, and permission analysis.
<br>
<br>
**SCRIPT 4**

Step 1 - Create script file: _nano script4.sh_ <br>
Step 2 - Give execute permissions: _chmod +x script4.sh_ <br>
Step 3 - Run script: _./script4.sh /var/log/syslog error_ or _./script4.sh /var/log/syslog warning_ <br>

This script analyzes a log file provided as a command-line argument. It reads the file line by line and counts occurrences of a specified keyword. If the file is empty, the script waits until content becomes available. After analysis, the script displays the total count and prints the last five matching lines. This script demonstrates file handling, loops, conditional statements, and command-line arguments in shell scripting.
<br>
<br>
**SCRIPT 5**

Step 1 - Create script file: _nano script5.sh_ <br>
Step 2 - Give execute permissions: _chmod +x script5.sh_ <br>
Step 3 - Run script: _./script5.sh_ <br>

This script generates a personalized open-source manifesto by asking the user three questions. The script collects user input using the read command and stores responses in variables. It then creates a text file and writes a formatted manifesto using echo commands. The script also displays the generated manifesto. This script demonstrates user interaction, file handling, and string manipulation in shell scripting.



