#!/bin/bash

exit_code=0

function create_directory {
  if [ -d $1 ]; then
    echo "$1: már létezik" >&2
    exit_code=1
  else
    mkdir $1
  fi
}

for i in $@; do
  case $i in
   "-h" | "--help")
      echo "HASZNALAT: $0 [-p | --pwd] | <konyvtar1> <konyvtar2> ..."
      exit 0
      ;;

    "-p" | "--pwd")
      pwd
      ;;
        
    *)
      create_directory "$i"
      ;;
    esac
done

exit $exit_code