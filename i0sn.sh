#!/bin/bash

# Cập nhật hệ thống và cài đặt các gói cần thiết
sudo apt-get update && sudo apt-get install -y \
    clang cmake build-essential pkg-config libssl-dev

# Cài đặt Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y
source $HOME/.cargo/env

# Tải xuống và biên dịch Storage Node
git clone -b v0.4.6 https://github.com/0glabs/0g-storage-node.git
cd 0g-storage-node
cargo build --release

# Tạo thư mục cấu hình
mkdir -p run
cp config-testnet.toml run/config.toml

# Hướng dẫn người dùng chỉnh sửa cấu hình
echo "Vui lòng chỉnh sửa run/config.toml trước khi chạy node."
echo "Sau khi chỉnh sửa, chạy lệnh sau để khởi động:"
echo "./r0sn.sh"
