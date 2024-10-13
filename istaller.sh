#!/bin/bash
# Installer script to download and set up the clear_journal.sh script

# Define the download URL (this is the link to your GitHub raw file or any hosting platform)
SCRIPT_URL="https://github.com/Ellnutt/JournalRM/blob/master/journal.sh"

# Download the script
curl -o clear_journal.sh $SCRIPT_URL

# Make the script executable
chmod +x clear_journal.sh

# Move the script to /usr/local/bin (so it's available system-wide)
sudo mv clear_journal.sh /usr/local/bin/clear_journal

# Print completion message
echo "clear_journal has been installed! You can run it by typing 'clear_journal'."
