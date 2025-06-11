#!/bin/bash
# ~/.config/hypr/scripts/run_periodic.sh

# Path to your actual script
SCRIPT_PATH="$HOME/.config/hypr/scripts/swww-random-wallpaper.sh"

# Function to log with timestamp
log_message() {
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] $1" >> ~/.config/hypr/logs/periodic.log
}

# Create log directory if it doesn't exist
mkdir -p ~/.config/hypr/logs

log_message "Starting periodic script runner"

# Main loop - runs every 5 minutes (300 seconds)
while true; do
    if [ -f "$SCRIPT_PATH" ] && [ -x "$SCRIPT_PATH" ]; then
        log_message "Executing script: $SCRIPT_PATH"
        "$SCRIPT_PATH" 2>&1 | while read -r line; do
            log_message "Script output: $line"
        done
    else
        log_message "Error: Script not found or not executable: $SCRIPT_PATH"
    fi
    
    sleep 300  # 5 minutes = 300 seconds
done
