#!/bin/bash

#####################################################################
#                                                                   #
#                     Caliban Discord Bot                           #
#                       v0.0.001-alpha                              #
#                        License: MIT                               #
#           contact: Jay Telford <hello@jaytelford.me>              #
#                                                                   #
#####################################################################

# How to Run This Script:
# On UNIX-like systems (Linux, macOS):
# 1. Open a terminal.
# 2. Navigate to the directory containing this script.
# 3. Make the script executable with the command: chmod +x setup-env.sh
# 4. Run the script with the command: ./setup-env.sh
# 
# On Windows (with WSL or Git Bash integrated):
# 1. Open PowerShell or Windows Terminal.
# 2. Navigate to the directory containing this script.
# 3. Run the script with the command: .\setup-env.sh
#    (Ensure WSL or Git Bash is integrated to handle .sh scripts)
#    - For WSL installation instructions, visit: 
#      https://docs.microsoft.com/en-us/windows/wsl/install
#    - For Git Bash installation, visit the official Git website: 
#      https://git-scm.com/download/win

#####################################################################
# DISCLAIMER:                                                       #
# Users should install the software linked above only if they are   #
# confident in what they are doing. Likewise, users should only run # 
# this script if they are sure that they understand each step of    #
# the script. Running scripts without understanding their functions #
# can potentially harm your system. Neither Jay Telford nor         #
# Mythbound Games shall be liable for any damage caused by the      #
# installation of software or execution of scripts by users who     #
# do not fully understand the actions being performed.              #
#####################################################################

# Function to check if Python is installed
check_python_installed() {
    if ! command -v python &> /dev/null; then
        echo ""
        echo "You must have Python installed to run this script."
        echo "Download Python here: https://www.python.org/downloads/"
        echo ""
        exit 1
    else
        echo ""
        echo "Python is installed. Continuing with script execution."
        echo ""
    fi
}

# Check if Python is installed
check_python_installed

# Create a virtual environment in the current directory
python -m venv .venv

# Function to check and activate the virtual environment
activate_venv() {
    if [[ "$VIRTUAL_ENV" == "" ]]; then
        echo ""
        echo "Activating virtual environment..."
        echo ""

        # For Unix-like systems
        # Comment out the line below if using Windows
        source .venv/bin/activate

        # For Windows
        # Uncomment the below line if using Windows
        # You must also comment out the above line for UNIX
        # .venv/Scripts/activate

        echo ""
        echo "Virtual environment activated."
        echo ""
    else
        echo ""
        echo "Virtual environment is already active."
        echo "Contining setup..."
        echo ""
    fi
}

# Call the function to check and activate venv
activate_venv


# Upgrade pip in the virtual environment
python -m pip install --upgrade pip

# Install the project including dependencies (production)
pip install .

# Install all dependencies (development)
# You will need to comment out the line " pip install . " above
# Uncomment the line below if setting up a development environment
# This will install ALL project dependencies
# pip install -r requirements.txt

# Function to check if a virtual environment is active

# Deactivate the virtual environment when done
# You can deactivate the virtual environment by typing 
#
# deactivate
#
# into your UNIX or Windows Terminal.

check_venv_active() {
    if [[ "$VIRTUAL_ENV" != "" ]]
    then
        echo ""
        echo "Python virtual environment is currently active."
        echo "To deactivate the Python virtual environment you can type 'deactivate'."
        echo ""
    else
        echo ""
        echo "No Python virtual environment is detected."
        echo "It is recommended that you activate a virtual environment."
        echo "You can activate a Python virtual environment with:"
        echo "For Unix-like systems: 'source .venv/bin/activate'"
        echo "For Windows: '.venv/Scripts/activate'"
        echo ""
    fi
}

# Call the function to check venv
check_venv_active