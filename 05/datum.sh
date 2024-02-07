#!/bin/bash

help_text="HASZNALAT: $0 <datum1> <datum2>"

regex="^[0-9]{4}\.[0-9]{2}\.[0-9]{2}$"
format="%Y.%m.%d"

function validate_date {
  if ! echo "$1" | grep -E "$regex" > /dev/null; then
    echo "Hibas datum!" >&2
    exit 1
  fi

  date -j -f "$format" "$1" > /dev/null 2>&1

  if [ $? != 0 ]; then
    echo "Hibas datum!" >&2
    exit 1
  fi
}

function calculate_working_days {
  local working_days=0

  for (( current_date=$1; current_date <= $2; current_date += 86400 )); do
    local day_of_week=$(date -r "$current_date" +%w)

    if (( $day_of_week >= 1 && $day_of_week <= 5 )); then
      ((working_days++))
    fi
  done

  echo "$working_days"
}


if [[ $1 == "-h" || $1 == "--help" ]]; then
  echo "$help_text"
  exit 0
elif [ $# != 2 ]; then
  echo "$help_text"
  exit 1
fi

validate_date $1
validate_date $2

DATUM1=$(date -j -f "%Y.%m.%d" "$1" +%s)
DATUM2=$(date -j -f "%Y.%m.%d" "$2" +%s)

if [[ $DATUM1 > $DATUM2 ]]; then
  echo 0
else
  calculate_working_days $DATUM1 $DATUM2
fi
