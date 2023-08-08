# Rsync Simple Copy Backup

A simple and efficient script to automate the backup process using `rsync` and CRON jobs. This script ensures only one instance runs at a time using a lock file mechanism.

## Setup

1. **Script Placement**: 
   - Ensure the script is placed in a directory only accessible by the root user for security reasons.

2. **Make the Script Executable**: 
   - You'll need to grant execute permissions to the script:

     ```bash
     sudo chmod +x /path/to/rsync_script.sh
     ```

3. **Modify Paths**:
   - Open the script and modify the source and destination paths:

     ```bash
     rsync -avzu '/put/your/original/path/' '/put/your/destination/path'
     ```

4. **Set Up CRON**:
   - Open the CRON editor with root privileges:

     ```bash
     sudo crontab -e
     ```

   - Add the following line to run the script every 5 minutes:

     ```bash
     */5 * * * * /path/to/rsync_script.sh
     ```

   - Save and exit.

5. **CRON Timing**:
   - If you're unfamiliar with setting up CRON timings, use online tools like [CronTab](https://tool.crontap.com/cronjob-debugger) or you can simply ask here for assistance.

## How It Works

The script first checks if an instance of `rsync` is already running using a lock file. If it finds the lock file, it exits, ensuring that only one backup process runs at a time. If no such file exists, it creates one, runs the `rsync` command, and then deletes the lock file once the process is complete.

## Note

Always make sure to test backup scripts in a controlled environment before deploying to ensure data integrity and prevent data loss.

