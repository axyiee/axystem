#!/usr/bin/env bash

OS=""
if [ -f /etc/os-release ]; then
  OS=$(cat /etc/os-release | awk -F= '$1=="NAME"{print $2};' | tr -d '"')
elif command -v lsb_release &>/dev/null; then
  OS=$(lsb_release -si)
elif [ -f /etc/lsb-release ]; then
  OS=$(cat /etc/lsb-release | awk -F= '$1=="DISTRIB_ID"{print $2};' | tr -d '"')
elif [ -f /etc/debian_version ]; then
  OS=Debian
fi

case "$OS" in
  *Arch*) echo "" ;;
  *Debian*) echo "" ;;
  *Ubuntu*) echo "" ;;
  *Void*) echo "" ;;
  *Windows*) echo "󰖳" ;;
  *FreeBSD*) echo "󰣠" ;;
  *OpenBSD*) echo "" ;;
  *Rocky*) echo "" ;;
  *Alpine*) echo "" ;;
  *CentOS*) echo "" ;;
  *Fedora*) echo "" ;;
  *Gentoo*|*Funtoo*) echo "" ;;
  *) echo "" ;;
esac
