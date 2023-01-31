#!/usr/bin/env bash
echo "Updating repositories"
sudo apt-get update
echo "Installing curl"
sleep 1
sudo apt install curl -y
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
echo "Installing google chrome"
sleep 1
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb -y
echo "Installing brave"
sleep 1
sudo apt install apt-transport-https -y
sudo curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg arch=amd64] https://brave-browser-apt-release.s3.brave.com/ stable main"|sudo tee /etc/apt/sources.list.d/brave-browser-release.list
sudo apt update
sudo apt install brave-browser -y
echo "Telling git who I am"
git config --global user.name "networkdavit"
git config --global user.email "lonecreation1612@gmail.com"
sleep 1
echo "Cloning github repos"
git config credential.helper store
git clone https://github.com/networkdavit/nobitour.git
sleep 1
echo "Downloading Private Internet Access"
wget https://installers.privateinternetaccess.com/download/pia-linux-3.3.1-06924.run
sh pia-linux-3.3.1-06924.run
echo "Installing nmap"
sleep 1
sudo apt-get install nmap -y
echo "Installing gobuster"
sleep 1
sudo apt install gobuster  -y
echo "Installing metasploit framework "
sleep 1
curl https://raw.githubusercontent.com/rapid7/metasploit-omnibus/master/config/templates/metasploit-framework-wrappers/msfupdate.erb > msfinstall && chmod 755 msfinstall && ./msfinstall
echo "Installing ruby"
sleep 1
sudo apt install ruby -y
echo "Installing wpscan"
sleep 1
sudo apt install build-essential libcurl4-openssl-dev libxml2 libxml2-dev libxslt1-dev ruby-dev  libgmp-dev zlib1g-dev
sudo gem install wpscan -y

echo "Installing httprobe"
sleep 1
sudo apt install httprobe

echo "Installing sqlmap"
sleep 1
sudo apt install sqlmap -y
echo "Installing aircrack-ng"
sudo apt-get install -y aircrack-ng -y
sleep 1

echo "Make dir for bug bounty"
sleep 1
mkdir bugbounty
cd bugbounty

echo "Downloading knockpy"
sleep 1
git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt
cd ..

echo "Downloading seclists"
sleep 1
git clone https://github.com/maurosoria/dirsearch.git

echo "Downloading dirsearch"
sleep 1
https://github.com/maurosoria/dirsearch.git

echo "Downloading sublist3r"
sleep 1
git clone https://github.com/aboul3la/Sublist3r.git

echo "Downloading searchsploit"
sleep 1
git clone https://github.com/offensive-security/exploitdb.git /opt/exploit-database
echo $PATH
ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit
cp -n /opt/exploit-database/.searchsploit_rc ~/





