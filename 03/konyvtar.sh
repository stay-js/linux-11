#!/bin/bash

for i in $@; do
  case $i in
  "-h" | "--help")
    echo "HASZNALAT: $0 [-p | --pwd] | <konyvtar1> <konyvtar2> ..."
    exit 0
    ;;

  "-p" | "--pwd")
    echo "$PWD"
    ;;

  *)
    mkdir "$i" || {
      echo "$i már létezik" >&2
      exit 1
    }
    ;;
  esac
done