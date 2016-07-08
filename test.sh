#!/bin/bash

echo "Building..."
./clean.sh >> log/build.log
./build.sh >> log/build.log
result=$?

if [ "$result" != "0" ]
then
    echo "Build failed"
    exit $result
fi

echo "Built Successfully"

./start.sh

status="waiting"
while [ $status == "waiting" ]
do
    curl localhost:8080/ping > /dev/null 2>&1
    result=$?

    if [ "$result" == "0" ]
    then
	status="up"
	echo "Server is ready"
    else
	echo "Waiting for server to start..."
	sleep 3
    fi
done

pybot tests/
result=$?

echo "Shutting down server"

./stop.sh

exit $result
