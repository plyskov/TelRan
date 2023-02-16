#! /bin/bash

USER="Pavel";

echo "Actual date: $(date)";
echo "Hello $USER";
echo "My current catalog: $(pwd)";

echo "Current amount of processes: $(ps -ef | tail -n+1 | wc -l)";

echo "Number of processes named 'bioset' except 'grep': $(ps -ef | grep 'bioset' | grep -v 'grep' | wc -l)";

FILE_NAME="/etc/passwd";
echo "Access rights to \"$FILE_NAME\" file: ($( ls -l $FILE_NAME | awk '{print $1}'))";
