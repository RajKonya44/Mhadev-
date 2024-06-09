#!/bin/bash

clear

spinner() {
  local i sp n
  sp='/-\|'
  n=${#sp}
  printf ' '
  while sleep 0.1; do
    printf "%s\b" "${sp:i++%n:1}"
  done
}

spinner &

msg="wellcome everyone"

for ((i=0; i<${#msg}; i++)); do
    echo -ne "\e[$((31 + i % 6))m${msg:$i:1}"
done

for ((i=1; i<=10; i++)); do
    echo ""
    echo "$msg"
done


sleep 5

kill "$!" 2>/dev/null

echo "echo 'made by me package you are welcome'"

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
echo "Installing urlscanio"
pip install urlscanio
# Install BeautifulSoup
echo "Installing BeautifulSoup..."
pip install beautifulsoup4

echo "All tasks completed successfully."
