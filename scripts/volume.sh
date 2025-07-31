#!/usr/bin/env bash
#!/bin/bash

while true; do
  vol=$(pamixer --get-volume)
  echo "volume=${vol}%"
  sleep 5
done
