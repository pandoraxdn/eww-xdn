#!/usr/bin/env bash
#!/bin/bash

# Variables con formato limpio (sin prefijos/texto extra)
time=$(date +"%H:%M")
ampm=$(date +"%p")
date=$(date +"%a %d %b")

# Actualiza variables EWW directamente
eww update time="$time"
eww update ampm="$ampm"
eww update date="$date"

echo "$time"  # Solo para depuración
