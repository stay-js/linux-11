#!/bin/bash
full_name=$(getent passwd $USER | cut -d ':' -f 5 | cut -d ',' -f1)
last_name=$(echo $full_name | cut -d ' ' -f2)

if [[ $last_name == "" ]]; then
  echo "Hello Garfield."
else
  echo "Hello $full_name."
fi
