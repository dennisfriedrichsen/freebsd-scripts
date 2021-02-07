#! /bin/sh

LOG_FILE=~/logs/nodebug-kernel_$(date +"%FT%T").log

cd /usr/src
date >> $LOG_FILE
nohup sudo time make -j2 kernel KERNCONF=GENERIC-NODEBUG >> $LOG_FILE
date >> $LOG_FILE
