#!/bin/bash

function gyok {
  echo "sqrt($1)" | bc
}

function masodfoku {
  discriminant=$(echo "sqrt(($2^2) - (4*$1*$3))" | bc)

  x1=$(echo "((-1*$2) + $discriminant)/(2*$1)" | bc)
  x2=$(echo "((-1*$2) - $discriminant)/(2*$1)" | bc)

  echo "x1=$x1, x2=$x2"
}

if [ $# == 1 ]; then
  gyok $1
elif [ $# == 3 ]; then
  masodfoku $1 $2 $3
fi