#!/bin/bash

# Chuyển đến thư mục chạy node
cd 0g-storage-node/run

# Chạy node với khóa cá nhân
../target/release/zgs_node --config config.toml --miner-key <your_private_key>
