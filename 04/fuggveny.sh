#!/bin/bash

function gyok {
  echo "sqrt($1)" | bc
}

function masodfoku {
  discriminant=$(echo "($2^2) - (4*$1*$3)" | bc)

  x1=$(echo "((-1*$2) + sqrt($discriminant)) / (2*$1)" | bc)
  x2=$(echo "((-1*$2) - sqrt($discriminant)) / (2*$1)" | bc)

  echo "x1=$x1, x2=$x2"
}
