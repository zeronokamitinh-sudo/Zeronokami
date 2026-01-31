#!/data/data/com.termux/files/usr/bin/bash

echo "======================================"
echo "     ZeroNokami Rejoin Tool Setup     "
echo "     Version: 1.0.0 - ZeroNokami      "
echo "======================================"

# Cấp quyền storage để tải về Download
termux-setup-storage

pkg update -y && pkg upgrade -y
pkg install python git -y
pip install --upgrade pip
pip install colorama requests

# Tự động tải file tool về /sdcard/Download (giống zam2109)
echo "Đang tải tool về máy (/sdcard/Download/zero_rejoin.py)..."
curl -s -o /sdcard/Download/zero_rejoin.py https://raw.githubusercontent.com/zeronokamitinh-sudo/ZeroRejoin/main/zero_rejoin.py

if [ -f "/sdcard/Download/zero_rejoin.py" ]; then
    echo "Tải thành công! File đã nằm ở /sdcard/Download/zero_rejoin.py"
else
    echo "Tải thất bại, kiểm tra mạng hoặc chạy termux-setup-storage lại."
fi

echo ""
echo "Setup xong! Chạy tool bằng lệnh này:"
echo 'su -c "export PATH=\$PATH:/data/data/com.termux/files/usr/bin && export TERM=xterm-256color && cd /sdcard/Download && python zero_rejoin.py"'
echo "Hoặc ngắn gọn (nếu đang ở Download): python zero_rejoin.py"
