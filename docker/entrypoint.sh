#!/bin/bash

valid_args=("erip" "evtxparse" "time", "logparser")

# Check if the first argument matches any of the valid arguments
if [ -z "$1" ]; then
  echo "Valid commands are 'erip', 'evtxparse' and 'time'"
else
  case "$1" in
    ${valid_args[0]})
      shift
      perl /Events-Ripper/erip.pl "$@"
      ;;
    ${valid_args[1]})
      shift
      perl /Events-Ripper/evtxparse.pl "$@"
      ;;
    ${valid_args[2]})
      shift
      perl /Events-Ripper/time.pl "$@"
      ;;
    ${valid_args[3]})
      shift
      wine logparser "$@"
      ;;
    *)
      echo "Valid commands are 'erip', 'evtxparse' and 'time'"
      ;;
  esac
fi

