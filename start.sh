#!/bin/bash

if [ -f checkers.pid ]
then
    echo "Process is already running. Or if it's not, you'll want to remove checkers.pid"
    exit 1
fi

java -jar target/checkers.jar server >> log/test.log 2>&1 &
pid=$!
echo -n $pid > checkers.pid
