# System Monitor Script

This is a simple Bash script that monitors basic system information and logs it to a file.

#  Description

The script logs the following details every time it is run:

- Current date and time

- CPU usage (via top)

- Memory usage (via free -h)

- Disk space on the root directory (df -h /)

Each log entry is appended to a file called system_log.txt in the same directory as the script.

#  Usage

1. Make the script executable

chmod +x system_monitor.sh

2. Run the script manually

./system_monitor.sh

This will create or update system_log.txt with the latest system info.
3. View the log file

cat system_log.txt

#  Automatic Scheduling (Bonus Task)

To schedule the script to run every 30 minutes automatically:
Step 1: Open the crontab editor

crontab -e

Step 2: Add the following line to the bottom (adjust the path):

*/30 * * * * /full/path/to/system_monitor.sh

# Example:

*/30 * * * * /home/kali/Documents/system_monitor.sh

Step 3: Save and close

Now, the script will execute every 30 minutes and append new data to system_log.txt.

# Notes

    This script is designed for beginner-level Bash users.

    It was created to fulfill the requirements of Assignment 4: System Monitoring (Task 4).

    No root access is required.

    Tested on Kali Linux.

# License

This script is open for educational and personal use.
