#!/bin/bash

#Daily Report

date=$(date | awk '{print $1}')

mkdir -p /root/exim_daily_report

eximstats -html=report.${date}.html -nr -nt /var/log/exim/main.log




#!/bin/bash

#Weekly Report

date1=$(date +%Y-%m-%d)

mkdir -p /root/exim_weekly_report/$date1 ; cd /root/exim_weekly_report/$date1 && eximstats -merge -html /root/exim_daily_report/report.*.html > $date1_weekly_report.html  

echo "Weekly Report Of SMTP" | mutt -s Weekly Report Of SMTP -a /root/exim_weekly_report/$date1_weekly_report.html -- zawyeaung091@gmail.com
   



