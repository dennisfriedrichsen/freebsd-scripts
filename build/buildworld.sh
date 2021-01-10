#! /bin/sh

LOG_FILE=~/logs/buildworld_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
nohup sudo time make -j2 buildworld  >> $LOG_FILE
date >> $LOG_FILE
