#!/bin/bash

if [ -z "$1" ]; then
  echo "Usage: $0 <domain>"
  exit 1
fi

DOMAIN=$1
RESULT_FILE="${DOMAIN}_subdomains.txt"

if ! command -v sublist3r &> /dev/null; then
  echo "sublist3r could not be found, please install it first."
  exit 1
fi

if ! command -v subfinder &> /dev/null; then
  echo "subfinder could not be found, please install it first."
  exit 1
fi

echo "Running sublist3r on $DOMAIN..."
sublist3r -d $DOMAIN -o sublist3r_temp.txt

echo "Running subfinder on $DOMAIN..."
subfinder -d $DOMAIN -o subfinder_temp.txt

cat sublist3r_temp.txt subfinder_temp.txt | sort | uniq | tee $RESULT_FILE

rm sublist3r_temp.txt subfinder_temp.txt

echo "Subdomain enumeration complete. Results saved to $RESULT_FILE."
