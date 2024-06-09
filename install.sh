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



echo -e "\e[31mUpdating package list...\e[0m"
pkg update -y



echo -e "\033[32mUpgrading installed packages...\033[0m"
pkg upgrade -y



echo -e "\033[34mInstalling Python and pip...\033[0m"
pkg install -y python


echo -e "\033[31mUpgrading pip...\033[0m"
pip install --upgrade pip
echo -e "\033[33mInstalling requests\033[0m"
pip install requests
echo -e "\033[32mInstalling colorama\033[0m"
pip install colorama
echo -e "\033[31mInstalling urlscanio\033[0m"
pip install urlscanio

echo -e "\033[31mInstalling BeautifulSoup...\033[0m"
pip install beautifulsoup4

echo "All tasks completed successfully.
"
