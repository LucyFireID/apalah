#!/bin/bash

# List semua id.json yang kamu miliki
id_files=(~/.config/solana/*.json)

total_ore=0 # variabel untuk menyimpan total saldo ORE

# Loop melalui setiap id.json
for id_file in "${id_files[@]}"
do
    echo "Mengecek balance untuk file kunci: $id_file"
    ore_output=$(ore --rpc https://api.mainnet-beta.solana.com/ --keypair "$id_file" rewards) # menjalankan perintah ore dan menyimpan outputnya
    ore_balance=$(echo "$ore_output" | awk '{print $1}') # mengambil saldo ORE dari output ore
    echo "$ore_balance ORE" # mencetak saldo ORE untuk file kunci yang sedang diproses
    total_ore=$(awk "BEGIN {print $total_ore + $ore_balance}") # menjumlahkan saldo ORE ke total_ore
    echo "-----------------------------------------------"
done

echo "Total saldo ORE dari semua file kunci: $total_ore ORE" # mencetak total saldo ORE dari semua file kunci
