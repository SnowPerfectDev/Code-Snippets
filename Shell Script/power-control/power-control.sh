#!/usr/bin/env bash

# Colors
f="\033[m"       # null
v="\033[31;1m"   # red
a="\033[32;1m"   # green

# Alerts
alertas() {
  printf "%b${v}Available parameters:\n\n"
  printf "${a}-l${f} | ${a}ligar:${f} Turn something on\n"
  printf "${a}-d${f} | ${a}desligar:${f} Turn something off\n"
  printf "${a}-h${f} | ${a}--help:${f} Show this help message\n"
}

# Checking provided parameter
case "$1" in
  -l | ligar)
    echo "Turned on";;
  -d | desligar)
    echo "Turned off";;
  -h | --help)
    alertas
    ;;
  *)
    clear
    alertas
    ;;
esac
