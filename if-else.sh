#!/bin/bash

echo "today which day"

today=$1
today1=sunday

if$($today -eq $today1)
then
echo "today: sunday"
else
echo "Monday"
fi
