# YANG PERLU DIPERHATIKAN SEBELUM PAKAI! GW SARANIN LU PADA CATET

Download semua file ini dengan cara klik tombol CODE dan pilih DOWNLOAD ZIP.
Buka filenya pake VSCode atau Notepad.

## claim.sh
Ini script buat WD otomatis. Mending lu lakuin tutor ini kalau lu gatau apa-apa.
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

Keenam, pantau semua wallet lu. Kalau semua wallet dah landing matiin scriptnya. code xxxxxx ini id screen WD tadi.
```
kill xxxxxx
```
