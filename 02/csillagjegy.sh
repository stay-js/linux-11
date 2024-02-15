#!/bin/bash

function error {
  echo "Hibás dátum!" >&2
  exit 1
}

if [ $# != 2 ]; then
  echo "HASZNALAT: $0 <honap> <nap>"
  exit 1
fi

case $1 in
"Január")
  if (($2 >= 1 && $2 <= 20)); then
    echo "Bak"
  elif (($2 >= 21 && $2 <= 31)); then
    echo "Vízöntő"
  else
    error
  fi
  ;;

"Február")
  if (($2 >= 1 && $2 <= 19)); then
    echo "Vízöntő"
  elif (($2 >= 20 && $2 <= 29)); then
    echo "Halak"
  else
    error
  fi
  ;;

"Március")
  if (($2 >= 1 && $2 <= 20)); then
    echo "Halak"
  elif (($2 >= 21 && $2 <= 31)); then
    echo "Kos"
  else
    error
  fi
  ;;

"Április")
  if (($2 >= 1 && $2 <= 20)); then
    echo "Kos"
  elif (($2 >= 21 && $2 <= 30)); then
    echo "Bika"
  else
    error
  fi
  ;;

"Május")
  if (($2 >= 1 && $2 <= 21)); then
    echo "Bika"
  elif (($2 >= 22 && $2 <= 31)); then
    echo "Ikrek"
  else
    error
  fi
  ;;

"Június")
  if (($2 >= 1 && $2 <= 21)); then
    echo "Ikrek"
  elif (($2 >= 22 && $2 <= 30)); then
    echo "Rák"
  else
    error
  fi
  ;;

"Július")
  if (($2 >= 1 && $2 <= 22)); then
    echo "Rák"
  elif (($2 >= 23 && $2 <= 31)); then
    echo "Oroszlán"
  else
    error
  fi
  ;;

"Augusztus")
  if (($2 >= 1 && $2 <= 23)); then
    echo "Oroszlán"
  elif (($2 >= 24 && $2 <= 31)); then
    echo "Szűz"
  else
    error
  fi
  ;;

"Szeptember")
  if (($2 >= 1 && $2 <= 22)); then
    echo "Szűz"
  elif (($2 >= 23 && $2 <= 30)); then
    echo "Mérleg"
  else
    error
  fi
  ;;

"Október")
  if (($2 >= 1 && $2 <= 23)); then
    echo "Mérleg"
  elif (($2 >= 24 && $2 <= 31)); then
    echo "Skorpió"
  else
    error
  fi
  ;;

"November")
  if (($2 >= 1 && $2 <= 22)); then
    echo "Skorpió"
  elif (($2 >= 23 && $2 <= 30)); then
    echo "Nyilas"
  else
    error
  fi
  ;;

"December")
  if (($2 >= 1 && $2 <= 21)); then
    echo "Nyilas"
  elif (($2 >= 22 && $2 <= 31)); then
    echo "Bak"
  else
    error
  fi
  ;;

*)
  error
  ;;
esac
