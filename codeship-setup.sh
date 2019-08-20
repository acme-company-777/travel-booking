#!/usr/bin/env bash
set -e

# check if installed
#function checker() { 
#        which "$1" | grep -o "$1" > /dev/null &&  return 0 || return 1 
#}

function checker2() { 
        dpkg -l "$1" | grep -o "$1" > /dev/null &&  return 0 || return 1 
}

if [ ! -f packages-microsoft-prod.deb ]; 
  then wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb;
    sudo dpkg -i packages-microsoft-prod.deb
    sudo add-apt-repository universe
fi 

sudo apt-get update

if checker2 "apt-transport-https" == 0 ; 
  then echo "Installed"; 
else 
  echo sudo apt install -y apt-transport-https; 
fi
if checker2 "dotnet-sdk-2.2" == 0 ; 
  then echo "Installed"; 
else sudo apt install -y dotnet-sdk-2.2; 
fi

dotnet build
