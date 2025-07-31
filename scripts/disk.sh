#!/usr/bin/env bash
#!/bin/bash

while true; do
  usage=$(df -h / | awk 'NR==2 {print $3}')
  echo "disk_usage=$usage"
  sleep 30
done
