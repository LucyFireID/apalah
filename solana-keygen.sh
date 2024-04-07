#!/bin/bash

# Jumlah wallet yang ingin dibuat
jumlah_wallet=7

# Loop untuk membuat wallet
for ((i=1; i<=jumlah_wallet; i++))
do
    nama_wallet="uka$i"
    solana-keygen new --outfile "$nama_wallet.json"
    echo "Wallet $nama_wallet telah dibuat"
done