#!/bin/bash

if [ ! -f checkers.pid ]
then
    echo "No process running"
    exit 1
fi

pid=`cat checkers.pid`
kill $pid
rm checkers.pid
