#!/bin/bash
Date=$(date)
start_time=$(date +%s)
sleep 10
end_time=$(date +%s)
totaltime=$($start_time-$end_time)
echo "Total script execution time is : $totaltime"
