# rsync-simple-copy
script for rsyncing folders. Simply do your CRON backup task for your mounts. 


I've placed this file to folder that only root can access. 

Script probably needs some type of chmod to work
`chmod +x /path/to/rsync_script.sh`
with sudo ofc. 


then make some edit by running with sudo:

`crontab -e`

place line:
`*/5 * * * * ~/path/to/rsync_projekty.sh`
save

If you don't know how to setup cron times:
https://tool.crontap.com/cronjob-debugger
this one is kinda nice to spit
or just ask chatgpt

