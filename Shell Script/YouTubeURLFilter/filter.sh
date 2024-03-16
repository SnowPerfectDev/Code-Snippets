#!/bin/bash

url="$1"

if [[ $url =~ youtu\.be|(www\.)?youtube\.com ]]; then
    clean_url=$(echo "$url" | sed -E 's/([&?]si)=[^&]+//g')
    retained_url=$(echo "$clean_url" | sed -E 's/([&?]index|list|t|v)=[^&]+//g')
    echo "$retained_url"
else
    echo "URL não corresponde ao YouTube"
fi
