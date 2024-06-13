#!/bin/bash

# 原始 IP 地址
old_ip="0.0.0.0"

# 提示用户输入新的 IP 地址
read -p "请输入新的 IP 地址: " new_ip

# 配置文件的根目录
root_dir="./conf"

# 递归遍历根目录及其子目录中的所有 .conf 文件
find "$root_dir" -type f -name "*.conf" | while read -r file; do
    # 使用 sed 命令替换 IP 地址
    sed -i "s/${old_ip}/${new_ip}/g" "$file"
done

echo "IP 地址已修改为 $new_ip"

