#!/bin/bash

# Check if figlet is installed
if ! command -v figlet &> /dev/null
then
    echo "figlet is not installed. Installing it now..."
    sudo apt-get install figlet -y
fi

# Read user input
read -p "Enter text to convert to ASCII art: " user_input

# Generate ASCII art
figlet "$user_input"

