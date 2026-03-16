#!/bin/bash
# cron_sim.sh - Simulate cron by writing date/time every 10 seconds

# Output file
OUTPUT_FILE="cron_sim.log"

# Infinite loop
while true; do
    # Get current date and time
    CURRENT_TIME=$(date "+%Y-%m-%d %H:%M:%S")
    
    # Append to file
    echo "$CURRENT_TIME" >> "$OUTPUT_FILE"
    
    # Wait 10 seconds
    sleep 10
done