#!/bin/bash

echo "today which day"

today=$1
today1=sunday

if($1 -eq $today1)
then
echo "today: $1"
else
echo "Monday"
fi
