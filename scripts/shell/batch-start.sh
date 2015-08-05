#!/bin/sh
BATCH_HOME=/home/batch/smart-batch-final
BATCH_CP=$BATCH_HOME/smart-batch
BATCH_TIMER_PID=$(ps -ef|grep com.somnus.smart.schedule.SimpleScheduleLaunchMain|grep java|awk '{print $2}')
BATCH_TIMER_PROGRESS=$(ps -ef|grep com.somnus.smart.schedule.SimpleScheduleLaunchMain|grep java|awk '{print}')


if [ -n "$BATCH_TIMER_PID" ];then

   echo "Batch with timer progress:" $BATCH_TIMER_PROGRESS

   echo "Batch with timer is already running. "

   exit 0
fi

echo "Starting batch with timer...."

#change directory
cd $BATCH_HOME
echo "current directory: "
pwd

#authorization
chmod +x ./shell/job-exec.sh
echo "add execution authorization to job-exec.sh"
chmod +x ./shell/timer-start.sh
echo "add execution authorization to timer-start.sh"

#change directory
cd $BATCH_CP
echo "current directory: "
pwd

#executing program
sh ../shell/timer-start.sh