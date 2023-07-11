#!/bin/bash

required_version="2.71"
installed_version=$(autoconf --version | awk 'NR==1{print $NF}')

# 使用dpkg的--compare-versions选项来比较版本号
if dpkg --compare-versions "$installed_version" "ge" "$required_version"; then
    echo "已安装的版本高于所需版本"
else
    echo "已安装的版本低于所需版本"
fi
