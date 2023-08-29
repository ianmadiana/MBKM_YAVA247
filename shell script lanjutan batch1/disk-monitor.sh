#!/bin/sh

# disk root
disk_info=$(df -kh /)

echo " ======================= Disk Monitor ======================="
# hostname (ip addr)
echo "Hostname: $(hostname) $(hostname -I)"

# User running whoami
echo "User running: $(whoami)"

# date (yymmdd)
echo "Today is $(date +'%Y-%m-%d')"

echo " ==================== Status Disk Available ===================="

treshold=60
total_available_space=$(echo "$disk_info" | awk 'NR==2 {print $4}')
total_available_space_gb=$(echo "$disk_info" | awk 'NR==2 {print $4}' | sed 's/G//')
total_use_percent=$(echo "$disk_info" | awk 'NR==2 {print $5}' | sed 's/%//')

echo "Treshold set: $treshold%"
echo "Total available space disk root: "$total_available_space"B"
echo "Presentase total use disk: $total_use_percent%"

if [ "$total_use_percent" -gt "$treshold" ]; then
    echo "Warning! Space disk melebihi treshold!"
    echo "Total space available: $total_available_space"
    echo "Diskspace root used: $total_use_percent%"
else
    echo "Space masih aman!"    
fi

