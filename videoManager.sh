#!/bin/bash
clear
IFS=$'\n'
fileMkv=`ls *.mkv 2>/dev/null`
for i in $fileMkv;do
    folderMkv=$( echo "$i" | sed "s/ /./" | sed "s/.mkv//" )
    mkdir -p "$folderMkv"
    mv "$i" "$folderMkv"
    echo "$i Copied."
done
fileMp4=`ls *.mp4 2>/dev/null`
for j in $fileMp4;do
    folderMp4=$( echo "$j" | sed "s/ /./" | sed "s/.mp4//" )
    mkdir -p "$folderMp4"
    mv "$j" "$folderMp4"
    echo "$j Copied."
done
