#!/usr/bin/env bash
# 安装飞书官方 CLI 与官方 Agent Skills（不含任何凭据）
set -euo pipefail
npx -y @larksuite/cli@latest install
npx -y skills add larksuite/cli -y -g
echo "下一步：运行 lark-cli auth login --recommend，由本人在浏览器里完成授权。"
