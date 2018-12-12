#!/bin/bash

# Quick shell script to automatically download and install
# the latest version of Plex Media Server on Debian/Ubuntu.
#
# The filters look for Ubuntu (Debian in my case!) strings only
# but can easily be adapted to Fedora or MacOS if you're a pervert
# or hipster respectively.
#
# requirements: apt-get install curl jq

# Insane JQ parsing to select both build AND distro. 
plex_url=$(curl -s https://plex.tv/api/downloads/1.json \
 | jq -r '.computer.Linux.releases[] | select((.build=="linux-ubuntu-x86_64") and .distro=="ubuntu") .url')

# Download the latest version of plex and install it
curl -O $plex_url && dpkg -i ${plex_url##*/}
