#!/bin/bash
# This script provides options to clear systemd journal logs based on user input (size or time).

# Function to display the menu
show_menu() {
    echo "Choose an option to clear the journal logs:"
    echo "1) Clear logs older than a specific time (e.g., 7d for 7 days)"
    echo "2) Clear logs if they exceed a specific size (e.g., 500M for 500 MB)"
    echo "3) Clear all logs"
    echo "4) Exit"
}

# Function to clear logs based on time
clear_by_time() {
    echo "Enter the time limit (e.g., 7d for 7 days, 1h for 1 hour):"
    read time_limit
    # Run the journalctl command to vacuum logs older than the specified time.
    sudo journalctl --vacuum-time=$time_limit
    echo "Logs older than $time_limit have been cleared."
}

# Function to clear logs based on size
clear_by_size() {
    echo "Enter the maximum allowed size for logs (e.g., 500M for 500 MB):"
    read size_limit
    # Run the journalctl command to vacuum logs if they exceed the specified size.
    sudo journalctl --vacuum-size=$size_limit
    echo "Logs have been reduced to a maximum size of $size_limit."
}

# Function to clear all logs
clear_all_logs() {
    # Clear all logs by vacuuming logs older than 1 second.
    sudo journalctl --vacuum-time=1s
    echo "All journal logs have been cleared."
}

# Display the menu until the user chooses to exit
while true; do
    show_menu
    read -p "Enter your choice (1-4): " choice
    case $choice in
        1) clear_by_time ;;  # Call the function to clear logs based on time
        2) clear_by_size ;;  # Call the function to clear logs based on size
        3) clear_all_logs ;;  # Call the function to clear all logs
        4) exit 0 ;;          # Exit the script
        *) echo "Invalid option, please try again." ;;  # Handle invalid input
    esac
done
