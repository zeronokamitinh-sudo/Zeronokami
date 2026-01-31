#!/data/data/com.termux/files/usr/bin/bash

echo "======================================"
echo "     ZeroNokami Rejoin Tool Setup     "
echo "     Version: 1.0.0 - ZeroNokami      "
echo "======================================"

# Cấp quyền truy cập bộ nhớ (Download)
termux-setup-storage

pkg update -y && pkg upgrade -y
pkg install python git -y
pip install --upgrade pip
pip install requests urllib3 colorama

# Tự động tải file tool về /sdcard/Download giống zam2109
echo "Đang tải tool về /sdcard/Download/zero_rejoin.py..."
curl -s -o /sdcard/Download/zero_rejoin.py https://raw.githubusercontent.com/zeronokamitinh-sudo/ZeroRejoin/main/zero_rejoin.py

if [ -f "/sdcard/Download/zero_rejoin.py" ]; then
    echo "Tải thành công! File đã sẵn sàng ở /sdcard/Download"
else
    echo "Tải thất bại → kiểm tra mạng hoặc chạy 'termux-setup-storage' lại."
fi

echo ""
echo "Setup hoàn tất!"
echo "Chạy tool bằng lệnh này (giống zam):"
echo 'su -c "export PATH=\$PATH:/data/data/com.termux/files/usr/bin && export TERM=xterm-256color && cd /sdcard/Download && python zero_rejoin.py"'
echo ""
echo "Hoặc ngắn gọn nếu đang ở thư mục Download:"
echo "python zero_rejoin.py"
