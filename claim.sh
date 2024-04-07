#!/bin/bash

# Mendeteksi semua file kunci JSON dalam direktori konfigurasi Solana
keypair_files=$(find ~/.config/solana -type f -name "*.json")

# Iterasi melalui setiap file kunci JSON
for keypair_file in $keypair_files
do
    echo "Mengklaim untuk file kunci: $keypair_file"
    ore --rpc https://api.mainnet-beta.solana.com/ --keypair "$keypair_file" --priority-fee 10000000 claim
    echo "Selesai mengklaim untuk file kunci: $keypair_file"
    echo ""
done
