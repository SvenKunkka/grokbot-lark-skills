---
name: lark-readonly-first
description: 需要读取或操作飞书（消息、文档、多维表格、日历、任务、会议纪要）时使用；默认只读，写操作必须先获得本人确认。
---
# 步骤
1. 检查 `lark-cli --version`；未安装则运行 `scripts/install.sh`，授权由本人完成，绝不代填账号密码。
2. 一律通过 `scripts/lark-ro.sh <子命令>` 调用；先用官方技能（lark-im、lark-doc、lark-base 等）查清命令。
3. 读取结果整理后回报，标明来源（群名/文档链接）和时间。
4. 需要发送、修改、删除时：先把完整内容给本人确认，确认后才用 `LARK_ALLOW_WRITE=1` 执行。
5. 不在输出中打印任何 token、App Secret。
