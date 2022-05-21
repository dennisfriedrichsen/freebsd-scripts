#! /bin/sh

PORT=$1
FILE=`echo $PORT | sed 's#/#_#g'`
LOG_FILE=~/logs/$FILE_$(date +"%FT%T").log

date >> $LOG_FILE
nohup sudo time portmaster -G --no-confirm $PORT >> $LOG_FILE
date >> $LOG_FILE
