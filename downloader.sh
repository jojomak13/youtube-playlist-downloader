#!/bin/bash

# downloads dir
downloadPath="./downloads"

# check if downloads dir not exists
if [ ! -d $downloadPath ]
then 
    echo "Creating Downloads Directory"
    mkdir $downloadPath
fi

# Get playlist url
echo "Enter playList URL: "
read url

# Ask for subtitle
echo "Need Subtitle ? (yes/no)"
read sub 

if [ $sub == "YES" ] || [ $sub == "yes" ]
then
    ./config/loader.exe --write-auto-sub --config-location ./config/setting.conf -url $url 
else
    ./config/loader.exe --config-location ./config/setting.conf -url $url
fi
# Let the fun begin :)