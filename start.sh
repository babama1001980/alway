#!/bin/bash
## ===========================================设置各参数（不需要的可以删掉或者前面加# ）=============================================

# 设置ARGO参数 (不设置默认使用临时隧道，如果设置把前面的#去掉)
export TOK='eyJhIjoiZjcyYWVkZTBiY2E1ZDdlNWQ2ZTE2MTNiNjVjNDc5ZjEiLCJ0IjoiZWJmYWYwNTctYzI1MC00YjU5LTkzYzEtOWVlZWU3MDg0MmQwIiwicyI6Ik16UTBabU0xTVdJdFpXWmhPUzAwWm1NMUxXSm1NREl0WmpKaE9HUTBZV1UwTW1FMSJ9'
export ARGO_DOMAIN='alway.xingfriedrich.tk'

#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
export NEZHA_SERVER='xxxx'
export NEZHA_KEY='xxx'
export NEZHA_PORT='443'
export NEZHA_TLS='1'

#设置app参数（默认x-ra-y参数，如果你更该了下载地址，需要修改UUID和VPATH）
export UUID='faacf142-dee8-48c2-8558-641123eb939c'
export VPATH='vl123456'
export CF_IP='cdn.xn--b6gac.eu.org'

## ===========================================设置x-ra-y下载地址（建议直接使用默认）===============================
# 设置amd64-X-A-R-Y下载地址（带内置配置版本）
export URL_BOT='https://github.com/babama1001980/oneapp/raw/main/amd64'
# 设置arm64_64-X-A-R-Y下载地址（带内置配置版本）
export URL_BOT2='https://github.com/babama1001980/oneapp/raw/main/arm64'
if command -v curl &>/dev/null; then
        DOWNLOAD_CMD="curl -sL"
    # Check if wget is available
  elif command -v wget &>/dev/null; then
        DOWNLOAD_CMD="wget -qO-"
  else
        echo "Error: Neither curl nor wget found. Please install one of them."
        sleep 30
        exit 1
fi
arch=$(uname -m)
if [[ $arch == "x86_64" ]]; then
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-amd > /tmp/app
else
$DOWNLOAD_CMD https://github.com/dsadsadsss/plutonodes/releases/download/xr/main-arm > /tmp/app
fi

chmod 777 /tmp/app && /tmp/app 
