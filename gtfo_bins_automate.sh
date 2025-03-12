#!/bin/bash

echo "Searching for SUID binaries that match GTFOBins..."
GTFO_LIST=$(curl -s https://gtfobins.github.io | grep -oP '(?<=<a href="/gtfobins/).*?(?=/")')

for binary in $(find / -perm -4000 2>/dev/null); do
    bin_name=$(basename "$binary")
    if echo "$GTFO_LIST" | grep -q "^$bin_name$"; then
        echo "[+] Found SUID binary: $bin_name - Potential Privilege Escalation!"
        echo "    Check: https://gtfobins.github.io/gtfobins/$bin_name/"
    fi
done

echo "Done."
