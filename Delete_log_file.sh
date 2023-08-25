#!/bin/bash


# create one log file.
#check log file exist or not with date
#if log file date old date then delete from logs
#create backup for daleted logfiles.

MAKEDIR=/home/centos/app-log
LOGSDIR=/tmp/
SCRIPTNAME=$0
DATE=$(date +%F)
LOGFILE=/$makedir/$DATE-$SCRIPTNAME
FILE_LOC=$(find $MAKEDIR -name "*.log*" -type f -mtime +14)


echo "$FILE_LOC"
#IF [ $FILE_LOC ]




