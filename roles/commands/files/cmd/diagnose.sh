#!/bin/bash

function diagnose () {
  echo "Hostname: $(hostname)"
  echo "Region: $(curl -s http://169.254.169.254/latest/meta-data/placement/availability-zone | sed -e 's/.$//g')"
  echo "IP: $(ip -4 -o addr | awk '/scope global/ {print $4}')"
  source /etc/os-release && echo "OS: $NAME $VERSION"
  echo "Kernel: $(uname -r)"
  echo "CPU: $(nproc)"
  echo "Disk: $(df -h / | awk 'NR==2 {print $2}')"
  echo "Memory: $(free -h | awk '/Mem/ {print $2}')"
  echo "----------------------------------------------------"
  df -B GB | (read -r; printf "%s\n" "$REPLY"; sort -k 2 -n -r) | head -n 4
  echo "----------------------------------------------------"
  lscpu
  echo "----------------------------------------------------"
  lspci
  echo "----------------------------------------------------"
  lsblk
}