#!/bin/bash

<<info
This shell scripts will take periodic beckups
this is shell script to take backup can also be used in cron jobs
it will take backup of the source directory and upload it to s3 bucket
eg.
./backup.sh <source> <dest>

info

src=$1
dest=$2

timestamp=$(date '+%Y-%m-%d')

zip -r "$dest/backup-$timestamp.zip" $src  > /dev/null

aws s3 sync "$dest" s3://tws-backups-p

echo "backup done & uploaded to s3"
