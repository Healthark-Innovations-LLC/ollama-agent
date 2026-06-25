#!/bin/bash
# temperature sensors

while true; do
  clear
  sensors
  echo ---
  nvidia-smi --query-gpu=temperature.gpu --format=csv
  echo ---
  sleep 5
done
