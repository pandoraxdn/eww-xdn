#!/usr/bin/env bash
#!/bin/bash

# Detectar interfaz de red automáticamente
interface=$(ip route | awk '/default/ {print $5}' | head -n1)

# Archivos de estadísticas
rx_file="/sys/class/net/$interface/statistics/rx_bytes"
tx_file="/sys/class/net/$interface/statistics/tx_bytes"

# Obtener valores anteriores
prev_rx=$(cat "$rx_file")
prev_tx=$(cat "$tx_file")

# Esperar 1 segundo
sleep 1

# Obtener nuevos valores
rx=$(cat "$rx_file")
tx=$(cat "$tx_file")

# Calcular velocidades (KB/s)
rx_speed=$(( (rx - prev_rx) / 1024 ))
tx_speed=$(( (tx - prev_tx) / 1024 ))

# Formatear salida
printf "%d↓ %d↑" $rx_speed $tx_speed
