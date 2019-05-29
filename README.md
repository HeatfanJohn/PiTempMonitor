# PiTempMonitor

This project using the Round-Robin-Database (rrdtool) to record the temperature of the Raspberry Pi's CPU every 30 seconds.  This is accomplished through the use of a shell script that effectively runs every 30 seconds.  To accomplish this CRON is used to run the same script every minute, however, the second execution of the script is delayed 30 seconds via the sleep command.

To use this project you need to first install the rrdtool using `apt-get install rrdtool`.

Next create the rrd database using the `./create_db` command provided.

Then add the `cputemp.sh` commands to your crontab using `crontab crontab.add`.

