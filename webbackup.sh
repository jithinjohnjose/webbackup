#!/bin/bash
DATE=$(date +%d-%m-%Y)
BACKUP_DIR="/root/backup/web-backup"

# To create a new directory into backup directory location.
mkdir -p $BACKUP_DIR/$DATE

# take each website backup in separate name, use below format.
tar -zcvpf $BACKUP_DIR/epaper-$DATE.tar.gz /home/epaper
tar -zcvpf $BACKUP_DIR/applet-$DATE.tar.gz /home/applet
tar -zcvpf $BACKUP_DIR/diaryfarm-$DATE.tar.gz /home/diaryfarm
tar -zcvpf $BACKUP_DIR/ayurveda-$DATE.tar.gz /home/ayurveda

# Delete files older than 10 days
find $BACKUP_DIR/* -mtime +10 -exec rm {} \;
