#!/usr/bin/env bash
# 只读守卫：拦截有副作用的 lark-cli 子命令，除非 LARK_ALLOW_WRITE=1
set -euo pipefail
WRITE_RE='(send|reply|create|update|delete|remove|patch|upload|move|copy|approve|reject|transfer|forward|cancel|urgent|add|set|write|edit|post)'
if [[ "${LARK_ALLOW_WRITE:-0}" != "1" ]] && printf '%s ' "$@" | grep -Eiq "(^| |\+|/|-)${WRITE_RE}( |$|-|_)"; then
  echo "已拦截：疑似写操作（$*）。确认后用 LARK_ALLOW_WRITE=1 重新执行。" >&2
  exit 2
fi
exec lark-cli "$@"
