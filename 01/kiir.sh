#!/bin/bash

if [ $# == 0 ]; then
  read F
elif [[ $1 == "-h" || $1 == "--help" ]]; then
  echo "HASZNALAT: $0 <fajlnev>"
  exit 0
else
  F=$1
fi

if [ -f "$F" ]; then
  echo "$(<$F)"
else
  echo "Nincs ilyen fajl." >&2
  exit 1
fi