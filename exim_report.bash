#!/bin/bash

#Daily Report

date=$(date | awk '{print $1}')

mkdir -p /root/exim_daily_report

eximstats -html=report.${date}.html -nr -nt /var/log/exim/main.log




   



