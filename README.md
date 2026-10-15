# grokbot-lark-skills
让 AI 助手通过飞书官方 CLI 读写飞书的适配层。**不重复造轮子**：命令和 26 个技能全部来自官方 [larksuite/cli](https://github.com/larksuite/cli)（MIT）。本仓库只提供：
- `scripts/install.sh`：安装官方 CLI 和官方技能
- `scripts/lark-ro.sh`：只读守卫，默认拦截发送、删除、修改类命令，需显式 `LARK_ALLOW_WRITE=1` 才放行
- `SKILL.md`：给 AI 助手的使用规范（先只读、写操作前要人确认）

## 上游致谢
- larksuite/cli — MIT — https://github.com/larksuite/cli
- larksuite/lark-openapi-mcp — https://github.com/larksuite/lark-openapi-mcp （需要 MCP 方式时用）

## 许可
本仓库适配代码 MIT。上游项目按其各自许可证。
