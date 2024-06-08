#!/bin/bash

# Update the package list
echo "Updating package list..."
pkg update -y

# Upgrade the installed packages
echo "Upgrading installed packages..."
pkg upgrade -y

# Install Python and pip
echo "Installing Python and pip..."
pkg install -y python

# Upgrade pip
echo "Upgrading pip..."
pip install --upgrade pip
echo "Installing requests"
pip install requests
echo "Installing colorama"
pip install colorama
# Install BeautifulSoup
echo "Installing BeautifulSoup..."
pip install beautifulsoup4

echo "All tasks completed successfully."
