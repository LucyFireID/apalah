# YANG PERLU DIPERHATIKAN SEBELUM PAKAI! GW SANGAT NGEWAJIBIN LU PADA BACA DULU! LU PADA CATET!

Download semua file ini dengan cara klik tombol CODE dan pilih DOWNLOAD ZIP.
Buka filenya pake VSCode atau Notepad. Untuk konek ke vps wajib pake Termius.

## solana-keygen.sh
Ini script buat generate banyak wallet sekaligus. Mending lu lakuin tutor ini kalau lu gatau apa-apa.
Semua file .json hasil generate ada di (~/.config/solana).

Lu ubah berapa wallet yang mau digenerate dibagian:
(jumlah_wallet=5)

Lu ubah juga nama walletnya bagian: Note! Hanya diperbolehkan mengubah teks 'baru' dilarang mengubang kode $i dan tanpa spasi.
(nama_wallet="baru$i")

Copy paste script ke vps lalu enter. Nanti bakal disuru masukin BIP39 phrase tinggal enter2 aja sampe selesai, pastikan untuk ngebackup pubkey yang muncul. Pubkey ini ya address SOL wallet.

Kalau udah selesai semua, masuk ke directory .json yang baru digenerate.
```
cd ~/.config/solana
```

lalu
```
ls
```

Harusnya lu sekarang bisa liat ada liat file dengan ekstensi .json, tugas lu sekarang ngebackup PrivKey nya dan import ke Solflare (wajib Solflare gausa tanya kenapa).

Misal nama filenya 'baru1.json' lu ketik
```
vim baru1.json
```

Blok pake kursor semua teks nya yang [123.123.123.123.xxx]. Copy teksnya dengan cara ctrl+shift+c lalu paste ke notepad.

Kalau udah, import ke Solflare.

Cara nutup vim editor, pencet esc di keyboard 1x lalu
```
:wq
```

## claim.sh
Ini script buat WD otomatis semua wallet. Mending lu lakuin tutor ini kalau lu gatau apa-apa.
Semua file .json wajib ada di (~/.config/solana).

Pertama, lu edit RPC script pake QuickNode punya lu.

Kedua, bikin screen section pake command ini. Samain aja tinggal ikutin gausa tanya kenapa. Nanti bakal kayak ngga terjadi apa2.
```
screen -S WD
```

Ketiga, paste script yang udah diedit tadi ke vps. Lalu enter.

Keempat, cek screen dah jalan apa belum. Kalau lu liat ada section dengan nama xxxxxx.WD artinya section berhasil dibuat. Misalnya 123456.WD.
```
screen -ls
```

Kelima, buka sectionnya buat cek jalan apa kagak. Biasanya awal ada error dikit, tungguin aja.
```
screen -r WD
```

Keenam, pantau semua wallet lu. Kalau semua wallet dah landing matiin scriptnya. Code xxxxxx ini id screen WD tadi.
```
kill xxxxxx
```
## mine.sh
Ini script buat mulai mining semua wallet otomatis. Mending lu lakuin tutor ini kalau lu gatau apa-apa.
Semua file .json wajib ada di (~/.config/solana).
