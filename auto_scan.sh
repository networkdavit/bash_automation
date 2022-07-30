#!/usr/bin/env bash
ip=$1

echo "Scanning for $ip"
sleep 1
echo "---------------------------------------------------------------------------------------------------"
sudo nmap -sC -sV -Pn -oN nmap.txt $ip
echo "---------------------------------------------------------------------------------------------------"
echo "Nmap done, saved to nmap.txt"
sleep 1
echo "Directory brute force"
sleep 1
echo "---------------------------------------------------------------------------------------------------"
read 
gobuster dir -u $ip -w /usr/share/wordlists/dirb/big.txt -o gobuster.txt
echo "Gobuster done, saved to gobuster.txt"

