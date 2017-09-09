######### Shell script for website backup automation ###########

               ***BY Jithin John Jose***

As a server administrator you should take regular backups of your website and databases. I have write a shell script to take backup of our server website, it was reduce the administrator work and keep your website backup.

In this example i have backup all our website content with zip format and stored to backup location and keep 10 days backup.

1) I have created the file called “webbackup.sh” on bin directory and put the below code and the file permission should be 755 so that you can execute the file.

2) Just run the file, it will be backup all website using compression and stored to specified location

3) To schedule the job at your convenient time, use cron
