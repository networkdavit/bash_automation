#!/usr/bin/env bash
echo "Updating repositories"
sudo apt-get update
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
sudo gem install wpscan
echo "Installing sqlmap"
sleep 1
sudo apt install sqlmap
echo "Installing aircrack-ng"
sudo apt-get install -y aircrack-ng -y
sleep 1
echo "Downloading knockpy"
sleep 1
git clone https://github.com/guelfoweb/knock.git
cd knock
pip3 install -r requirements.txt
cd ..
echo "Downloading searchsploit"
sleep 1
git clone https://github.com/offensive-security/exploitdb.git /opt/exploit-database
echo $PATH
ln -sf /opt/exploit-database/searchsploit /usr/local/bin/searchsploit
cp -n /opt/exploit-database/.searchsploit_rc ~/
