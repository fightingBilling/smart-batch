#!/bin/sh
BATCH_HOME=/home/batch/smart-batch-final
BATCH_CP=$BATCH_HOME/smart-batch
JOB_NAME=$1
IDENTITY=$2
ACCDATE=$3

#change directory
cd $BATCH_CP
echo "current directory: "
pwd


for i in ../lib/*.jar; do
   CPPATH="$CPPATH":"$i"
done

java  -Xms2G -Xmx2G  -Dlogback.configurationFile=./logback.xml -cp ./:$CPPATH com.somnus.smart.batch.core.joblaunchdetails.SimpleJobLaunchMain -j $JOB_NAME -p prd -i $IDENTITY -d $ACCDATE
EXITCODE=$?
echo EXIT CODE:$EXITCODE
exit $EXITCODE