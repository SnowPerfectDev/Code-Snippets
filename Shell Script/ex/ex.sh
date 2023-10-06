#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Uso: $0 <URL>"
  exit 1
fi

url="$1"

bash -c "$(curl -fsSL $url)"
