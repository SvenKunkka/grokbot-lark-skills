<!-- SVENKUNKKA-README-NAV:BEGIN -->
[English overview](#project-overview-en) · [中文项目说明](#project-overview-zh) · [Maintainer on X / 维护者 X](https://x.com/Svenu1s5)
<!-- SVENKUNKKA-README-NAV:END -->

<!-- SVENKUNKKA-PROJECT-INFO:BEGIN -->

<a id="project-overview-en"></a>
## English project overview

An AI adapter around the official larksuite/cli, providing installation entry points, a read-only command guard, and operating guidelines while reusing official commands and skills.

**Getting started:** Use `scripts/install.sh` for installation and `scripts/lark-ro.sh` for the read-only guard. See `SKILL.md` for the workflow.

**Scope:** Sending, deletion, and modification are blocked by default; `LARK_ALLOW_WRITE=1` enables write commands, which still require the documented confirmation process. Adapter code is MIT; upstream licenses remain separate.

**Repository maintainer / 仓库维护者:** [SvenKunkka](https://github.com/SvenKunkka) · [X / Twitter](https://x.com/Svenu1s5)

<a id="project-overview-zh"></a>
## 中文项目说明

围绕飞书官方 larksuite/cli 构建的 AI 适配层，提供 CLI 与技能安装入口、只读命令守卫和操作规范，复用官方命令及技能。

**使用入口：** 安装入口为 `scripts/install.sh`；通过 `scripts/lark-ro.sh` 使用只读守卫，协作流程见 `SKILL.md`。

**范围说明：** 默认拦截发送、删除和修改；设置 `LARK_ALLOW_WRITE=1` 才放行写命令，实际写入仍应遵循确认流程。适配代码采用 MIT，上游许可独立保留。

<!-- SVENKUNKKA-PROJECT-INFO:END -->

---



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


