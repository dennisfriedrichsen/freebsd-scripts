#! /bin/sh

LOG_FILE=~/logs/portmaster_$(date +"%FT%T").log

date >> $LOG_FILE
nohup sudo time portmaster -aG --no-confirm  >> $LOG_FILE
date >> $LOG_FILE
