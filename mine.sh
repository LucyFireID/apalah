#!/bin/bash

# Fungsi untuk mengeksekusi ore dalam layar terpisah
start_ore() {
    local keypair_file="$1"
    local screen_name="$2"
    
    # Mengeksekusi ore dalam layar terpisah dengan nama sesuai dengan nama file keypair
    screen -dmS "$screen_name" bash -c "while true; do ore --rpc https://api.mainnet-beta.solana.com/ --keypair $keypair_file --priority-fee 10000000 mine --threads 5; sleep 5; done"
}

# Mendapatkan daftar file JSON di direktori ~/.config/solana/
keypair_files=($(find ~/.config/solana/ -maxdepth 1 -type f -name "*.json"))

# Loop melalui setiap file keypair dan menjalankan ore dalam layar terpisah dengan nama sesuai dengan nama file keypair
for keypair_file in "${keypair_files[@]}"; do
    # Mendapatkan nama file keypair tanpa ekstensi dan path
    file_name=$(basename -- "$keypair_file")
    file_name="${file_name%.*}" # Menghapus ekstensi .json
    
    # Menjalankan ore dalam layar terpisah dengan nama sesuai dengan nama file keypair
    start_ore "$keypair_file" "$file_name"
done
