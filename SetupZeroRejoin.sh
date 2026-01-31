#!/bin/bash
cd
if [ -e "/data/data/com.termux/files/home/storage" ]; then
    rm -rf /data/data/com.termux/files/home/storage
fi
termux-setup-storage
yes | pkg update
yes | pkg upgrade
yes | pkg install python
yes | pkg install python-pip
pip install requests rich prettytable pytz pycryptodome
export CFLAGS="-Wno-error=implicit-function-declaration"
pip install psutil colorama
curl -Ls "https://raw.githubusercontent.com/zeronokamitinh-sudo/ZeroRejoin/main/zero_rejoin.py" -o /sdcard/Download/zero_rejoin.py
echo ""
echo "Setup ZeroNokami hoàn tất!"
echo "File tool đã tải về: /sdcard/Download/zero_rejoin.py"
echo "Chạy bằng lệnh:"
echo 'su -c "export PATH=\$PATH:/data/data/com.termux/files/usr/bin && export TERM=xterm-256color && cd /sdcard/Download && python zero_rejoin.py"'
