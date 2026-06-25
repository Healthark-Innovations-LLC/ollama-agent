#!/bin/bash
# temperature sensors

while true; do
  clear
  sensors
  echo ---
  nvidia-smi --query-gpu=temperature.gpu,utilization.gpu,memory.used,memory.total --format=csv
  echo ---
  sleep 5
done
