#!/bin/bash

<<info
This shell scripts will take periodic beckups

eg.
./backup.sh <source> <dest>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip -r "$dest/backup-$timestamp.zip" $src  > /dev/null

aws s3 sync "$dest" s3://tws-backups-p

echo "backup done & uploaded to s3"
