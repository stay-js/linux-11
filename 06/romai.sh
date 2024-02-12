#!/bin/bash

if ! echo "$1" | grep -E "^[0-9]*$" > /dev/null; then
  echo "Hibas szam!" >&2
  exit 1
fi

current=$1
result=""
values=(1000 900 500 400 100 90 50 40 10 9 5 4 1)
numerals=("M" "CM" "D" "CD" "C" "XC" "L" "XL" "X" "IX" "V" "IV" "I")

for (( i=0; i < ${#values[@]}; i++ )); do
  while (( $current >= ${values[i]} )); do
    result+=${numerals[i]}
    current=$(($current - ${values[i]}))
  done
done

echo $result