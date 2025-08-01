#!/usr/bin/env bash
#!/bin/bash

# Memoria libre = MemAvailable
free -m | awk '
/Mem:/ {
    free = $7 / 1024  # Convertir a GB
    printf "%.1fG", free
}'
