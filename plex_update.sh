#!/bin/bash

# Quick shell script to automatically download and install
# the latest version of Plex Media Server on Debian or Ubuntu.
#
# The filters look for Debian/Ubuntu strings only
# but can easily be adapted to Fedora or MacOS if you're a pervert
# or hipster respectively.
#
# requirements: apt-get install curl jq

# Insane JQ parsing to select both build AND distro. 
plex_url=$(curl -s https://plex.tv/pms/downloads/5.json \
 | jq -r '.computer.Linux.releases[] | select((.build=="linux-x86_64") and .distro=="debian") .url')

# Download the latest version of plex and install it
curl -O $plex_url && apt install ./${plex_url##*/}
