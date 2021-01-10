#! /bin/sh

LOG_FILE=~/logs/kernel_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
nohup sudo time make -j2 kernel  >> $LOG_FILE
date >> $LOG_FILE
