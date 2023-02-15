#!/bin/bash

if [ $# -ne 1 ]; then
  echo "Usage: $0 <tld>"
  exit 1
fi

tld=$1

echo "[*] Running findomain..."
findomain -t $tld -u domains_findomain.txt

echo "[*] Running SubFinder..."
subfinder -d $tld -o domains_subfinder.txt

echo "[*] Running Amass..."
amass enum -passive -d $tld -o domains_amass.txt

echo "[*] Running AssetFinder..."
assetfinder --subs-only $tld | tee domains_assetfinder.txt

echo "[*] Merging results..."
cat domains_findomain.txt domains_subfinder.txt domains_amass.txt domains_assetfinder.txt | sort -u > domains_all.txt

echo "[+] Done. Results saved in domains_all.txt"
