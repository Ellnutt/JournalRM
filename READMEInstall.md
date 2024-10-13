# Linux Journal Installer Script

This script automates the installation and setup of a journal management system on Linux.

## Installation and Usage Steps

1. Open your terminal and clone the repository to your local machine using Git by running the command `git clone https://github.com/Ellnutt/JournalRM.git`. 
2. After cloning, navigate to the project directory by executing `cd JournalRM`. 
3. Ensure that the `installer.sh` script has the necessary executable permissions by running `chmod +x installer.sh`. 
4. Once the permissions are set, run the installer script with root or sudo privileges by executing `sudo ./installer.sh`. The script will handle the installation of required dependencies and configure your system for journal usage.
5. After the installation is complete, you can use the journal system by running `journalctl <options>`. For example, to view detailed logs, you can use the command `journalctl -xe`. 
6. If you encounter any issues during the installation process, ensure you have an active internet connection, run the script with sudo privileges to avoid permission issues, and verify that your Linux distribution is up to date.

This project is licensed under the MIT License. For more details, refer to the LICENSE file in the repository.
