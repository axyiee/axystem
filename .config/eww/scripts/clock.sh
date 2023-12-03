#!/usr/bin/env bash

suffix() {
  case `date +%d` in
    1|21|31) echo "st";;
    2|22)    echo "nd";;
    3|23)    echo "rd";;
    *)       echo "th";;
  esac
}

case "$1" in
  hour) date +%H ;;
  min) date +%M ;;
  "date") date "+%A, %B %d`suffix`" ;;
  "time") date "+%I:%M %p" ;;
  *)
    echo "Invalid argument."
    exit 1 ;;
esac
