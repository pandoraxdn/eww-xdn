#!/usr/bin/env bash
#!/bin/bash

# Obtener frecuencia promedio de todos los núcleos
awk '{sum += $1} END {printf "%.2f", sum/NR}' /sys/devices/system/cpu/cpufreq/policy*/scaling_cur_freq | 
awk '{print $1/1000}'
