#!/bin/sh
BATCH_TIMER_PID=$(ps -ef|grep com.somnus.smart.schedule.SimpleScheduleLaunchMain|grep java|awk '{print $2}')
BATCH_TIMER_PROGRESS=$(ps -ef|grep com.somnus.smart.schedule.SimpleScheduleLaunchMain|grep java|awk '{print}')


if [ -n "$BATCH_TIMER_PID" ];then

   echo "Batch with timer progress:" $BATCH_TIMER_PROGRESS
   
   kill -9 $BATCH_TIMER_PID

   echo "Progress(pid): " $BATCH_TIMER_PID " has been killed"
   
else

   echo "Cannot find valid batch with timer progress"
fi

exit 0