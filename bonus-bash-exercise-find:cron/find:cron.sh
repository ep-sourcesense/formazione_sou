#!/bin/bash

echo "Adding cron job to delete files older than 30 days from /var/logs every Monday at 6:30 AM..."

JOB="30 6 * * 1 find /var/logs -type f -ctime +30 -delete > /dev/null 2>&1"

(crontab -l 2>/dev/null; echo "${JOB}") | crontab -

echo "Cron job added to delete files older than 30 days from /var/logs every Monday at 6:30 AM."