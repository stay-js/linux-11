#!/bin/bash

exit_code=0

create_directory() {
  if [ -d $1 ]; then
    echo "$1: már létezik" >&2
    exit_code=1
  else
    mkdir $1
  fi
}

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
        create_directory "$arg"
        ;;
    esac
done

exit $exit_code