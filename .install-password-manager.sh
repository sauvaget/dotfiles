#!/bin/bash
# chezmoi read-source-state.pre hook: templates call rbw, so it must be installed
# and pointed at Vaultwarden before chezmoi reads them. Fast no-op once set up.
# Usage: .install-password-manager.sh <vaultwarden-email>
set -euo pipefail

email="${1:-}"
url="https://vaultwarden.svgt.net"
pinentry="pinentry-gnome3"   # falls back to a terminal prompt without a desktop session

if ! command -v rbw >/dev/null; then
    echo "chezmoi hook: installing rbw"
    sudo pacman -S --needed --noconfirm rbw
fi

config=$(rbw config show 2>/dev/null || true)
has() { grep -qE "\"$1\": *\"$2\"" <<<"$config"; }

has base_url "$url"          || rbw config set base_url "$url"
has pinentry "$pinentry"     || rbw config set pinentry "$pinentry"
if [ -n "$email" ]; then
    has email "$email"       || rbw config set email "$email"
fi
