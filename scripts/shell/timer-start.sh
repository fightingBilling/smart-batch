#!/bin/sh

for i in ../lib/*.jar; do
   CPPATH="$CPPATH":"$i"
done

nohup java  -Xms2G -Xmx2G  -Dlogback.configurationFile=./logback-quartz.xml -cp ./:$CPPATH com.somnus.smart.schedule.SimpleScheduleLaunchMain -p prd&