#!/bin/bash
# golem john script
# args: <WorkerNum>, <TotalWorkers>, <TimeInSeconds>, <Password>

# hash the provided password and store it
echo -n $4 | md5sum | cut -d" " -f1 > /usr/src/john/run/pass.hash

# run john using default parameters
# not using fork for now
timeout $3s /usr/src/john/run/john --format=raw-md5 /usr/src/john/run/pass.hash --node=$1/$2

# show the results in case they are cached already
/usr/src/john/run/john --show --format=raw-md5 /usr/src/john/run/pass.hash >> /golem/output/result.txt
