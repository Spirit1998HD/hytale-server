#!/bin/bash

mkdir -p /home/hytale/auth

# WIP

mkdir -p /home/hytale/server
cd /home/hytale/server
rm -rf ./hytale-downloader
wget -q -O hytale-downloader.zip https://downloader.hytale.com/hytale-downloader.zip
unzip -j hytale-downloader.zip hytale-downloader-linux-amd64 -d .
mv ./hytale-downloader-linux-amd64 ./hytale-downloader
chmod u+x ./hytale-downloader
rm -rf hytale-downloader.zip
./hytale-downloader

# WIP