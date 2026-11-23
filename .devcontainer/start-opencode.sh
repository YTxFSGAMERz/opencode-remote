#!/usr/bin/env bash
set -euo pipefail

if pgrep -f '[o]pencode serve --hostname 0.0.0.0 --port 4096' >/dev/null; then
  exit 0
fi

mkdir -p "$HOME/.opencode-remote"
if [ ! -s "$HOME/.opencode-remote/server-password" ]; then
  openssl rand -hex 24 > "$HOME/.opencode-remote/server-password"
  chmod 600 "$HOME/.opencode-remote/server-password"
fi

export OPENCODE_PASSWORD="$(cat "$HOME/.opencode-remote/server-password")"
nohup opencode serve --hostname 0.0.0.0 --port 4096 \
  > "$HOME/.opencode-remote/server.log" 2>&1 < /dev/null &
echo "OpenCode server starting on port 4096."
echo "Server password is stored at: $HOME/.opencode-remote/server-password"
echo "View logs: tail -f $HOME/.opencode-remote/server.log"
