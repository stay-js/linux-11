#!/bin/bash

exit_code=0

for arg in $@; do
  case $arg in
  "-h" | "--help")
    echo "HASZNALAT: $0 [-p | --pwd] | <konyvtar1> <konyvtar2> ..."
    exit 0
    ;;

  "-p" | "--pwd")
    pwd
    ;;

  *)
    if [ -d "$arg" ]; then
      echo "$arg: már létezik" >&2
      exit_code=1
    else
      mkdir "$arg"
    fi
    ;;
  esac
done

exit $exit_code
