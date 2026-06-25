#!/bin/bash
# temperature sensors

while true; do
  sensors
  echo ---
  nvidia-smi --query-gpu=temperature.gpu --format=csv
  echo ---
  sleep 5
done
