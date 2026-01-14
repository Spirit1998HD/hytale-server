#!/bin/bash

# WIP

cd /hytale/server
rm -rf ./hytale-downloader
curl -fsSL -o hytale-downloader.zip https://downloader.hytale.com/hytale-downloader.zip
unzip -qq -j hytale-downloader.zip hytale-downloader-linux-amd64 -d .
mv ./hytale-downloader-linux-amd64 ./hytale-downloader
chmod u+x ./hytale-downloader
rm -rf hytale-downloader.zip
./hytale-downloader

# WIP