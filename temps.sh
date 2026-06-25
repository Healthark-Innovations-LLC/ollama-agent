#!/bin/bash
# temperature sensors

while true; do
  clear
  sensors
  echo ---
  nvidia-smi
  echo ---
  sleep 5
done
