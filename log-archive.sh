#!/bin/bash

logsDir=$1
archiveDir=./logs_archive

# Check if the archive directory exists, create it if it doesn't
if [ ! -d $archiveDir ]
	then
		mkdir -p $archiveDir
fi

# Compress and archive the logs
sudo tar -zcvf "$archiveDir/logs_archive_$(date +"%Y%m%d")_$(date +"%H%M%S").tar.gz" "$logsDir"
