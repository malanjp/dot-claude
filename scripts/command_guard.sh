#!/usr/bin/env bash
set -euo pipefail

payload="$(cat)"
tool_name="$(jq -r '.tool_name // ""' <<<"$payload")"
cmd="$(jq -r '.tool_input.command // ""' <<<"$payload")"

block() {  # exit 2 で Claude に「ブロック & 提案」を返す
  echo "$1" >&2
  exit 2
}

case "$tool_name" in
  # Claude 内蔵の Grep / Read ツール自体も禁止
  Grep)
    block "Use ripgrep via Bash instead of Grep tool. Example: rg --smart-case -n --hidden --glob '!.git' <pattern> [path]"
    ;;
  Read)
    block "Use cat (or less) via Bash instead of Read tool. Example: cat <file>"
    ;;
  Bash)
    # ユーザーやClaudeがBashで叩くコマンドを検査
    if [[ "$cmd" =~ ^[[:space:]]*grep([[:space:]]|$) ]]; then
      # 安全のため最小限の既定フラグだけ提案（必要に応じて調整）
      suggest="$(sed -E 's/^[[:space:]]*grep/rg --smart-case -n/' <<<"$cmd")"
      block "Block slow command 'grep'. Try: ${suggest}"
    fi
    if [[ "$cmd" =~ ^[[:space:]]*Read([[:space:]]|$) ]]; then
      suggest="$(sed -E 's/^[[:space:]]*Read/cat/' <<<"$cmd")"
      block "Block 'Read'. Use: ${suggest}"
    fi
    ;;
esac

# 何もしなければ通す
exit 0
