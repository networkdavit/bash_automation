#!/usr/bin/env bash
echo "Updating repositories"
sudo apt-get update
echo "Installing John The Ripper"
sleep 1
sudo apt-get install john -y
echo "Installing hashcat"
sleep 1
sudo apt install hashcat -y
echo "Installing vscode"
sleep 1
sudo snap install --classic code
echo "Installing python3-pip"
sleep 1
sudo apt install python3-pip -y
echo "Installing nodejs and npm"
sleep 1
sudo apt install nodejs npm -y
echo "Installing virtual box"
sleep 1
sudo apt-get install virtualbox -y
echo "Installing terminator"
sleep 1
sudo apt install terminator -y
echo "Installing sublime text"
sleep 1
sudo apt install dirmngr gnupg apt-transport-https ca-certificates software-properties-common -y
curl -fsSL https://download.sublimetext.com/sublimehq-pub.gpg | sudo apt-key add -
sudo add-apt-repository "deb https://download.sublimetext.com/ apt/stable/" -y
sudo apt install sublime-text -y


