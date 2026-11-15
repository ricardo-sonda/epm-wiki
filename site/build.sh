#!/usr/bin/env bash
# Build the EPM wiki site with Quartz.
# Fetches the pinned Quartz version into .quartz/, applies this repo's config,
# and renders wiki/ into public/. Extra args pass through to `quartz build`
# (e.g. `bash site/build.sh --serve` for a local preview on localhost:8080).
set -euo pipefail
ROOT="$(cd "$(dirname "$0")/.." && pwd)"
VERSION="$(tr -d '[:space:]' < "$ROOT/site/QUARTZ_VERSION")"
Q="$ROOT/.quartz"

if [ "$(cat "$Q/.epm-quartz-version" 2>/dev/null || true)" != "$VERSION" ]; then
  rm -rf "$Q"
  git clone --quiet --depth 1 --branch "$VERSION" https://github.com/jackyzha0/quartz.git "$Q"
  echo "$VERSION" > "$Q/.epm-quartz-version"
fi

cp "$ROOT/site/quartz.config.ts" "$ROOT/site/quartz.layout.ts" "$Q/"
cd "$Q"
[ -d node_modules ] || npm ci --no-audit --no-fund
npx quartz build -d "$ROOT/wiki" -o "$ROOT/public" "$@"
