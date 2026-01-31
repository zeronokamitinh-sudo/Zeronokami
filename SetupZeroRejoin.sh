#!/bin/bash
# 1. Cấp quyền bộ nhớ
termux-setup-storage
sleep 2

# 2. Cập nhật hệ thống
pkg update -y && pkg upgrade -y

# 3. Cài đặt Python và các công cụ cần thiết
pkg install python python-pip -y

# 4. Cài đặt ĐỦ thư viện cho code Python của bạn
pip install requests rich prettytable pytz psutil colorama

# 5. Tải code Python (Lưu vào home cho ổn định)
curl -Ls "https://raw.githubusercontent.com/zeronokamitinh-sudo/ZeroRejoin/main/zero_rejoin.py" -o $HOME/zero_rejoin.py

echo "--- SETUP HOÀN TẤT ---"
echo "Chạy lệnh sau để mở tool: python $HOME/zero_rejoin.py"
