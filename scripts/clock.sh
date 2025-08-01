#!/usr/bin/env bash
#!/bin/bash

# Configurar formato de hora en inglés
export LC_TIME=C

# Obtener valores de tiempo
time=$(date +"%H:%M")
ampm=$(date +"%p")
date=$(date +"%a %d %b")

# Salida en formato JSON
echo "{\"time\":\"$time\",\"ampm\":\"$ampm\",\"date\":\"$date\"}"
