#!/bin/bash

echo "------ CPU Usage ------"
wmic cpu get loadpercentage

echo
echo "------ Memory Usage (MB) ------"
wmic OS get FreePhysicalMemory,TotalVisibleMemorySize /Value

echo
echo "------ Top 5 Memory Consuming Processes (Windows) ------"
tasklist /FO TABLE | sort -nr -k 5 | head -n 10

echo
echo "------ Top 5 CPU Consuming Processes (Windows) ------"
wmic path win32_perfformatteddata_perfproc_process get Name,PercentProcessorTime | head -n 10
