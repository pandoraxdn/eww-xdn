#!/usr/bin/env bash
#!/bin/bash

# Memoria usada = MemTotal - MemAvailable
free -m | awk '
/Mem:/ {
    used = ($2 - $7) / 1024  # Convertir a GB
    printf "%.1fG", used
}'
