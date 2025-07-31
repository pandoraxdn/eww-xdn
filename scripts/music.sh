#!/usr/bin/env bash
#!/bin/bash

while true; do
  title=$(playerctl metadata title 2>/dev/null || echo "No Track")
  artist=$(playerctl metadata artist 2>/dev/null || echo "No Artist")
  echo "song_title=$title"
  echo "artist=$artist"
  sleep 5
done
