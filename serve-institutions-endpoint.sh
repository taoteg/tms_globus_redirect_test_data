#!/usr/bin/env bash
# Serve the current directory over HTTP on localhost:3001
set -euo pipefail

# Skip creating the symlink if it already exists, so reruns don't trip set -e
(
  cd v1/tms/
  if [ -L institutions ]; then
    echo "Using existing symlink: v1/tms/institutions -> $(readlink institutions)"
  elif [ -e institutions ]; then
    echo "Using existing file: v1/tms/institutions"
  else
    ln -s institutions-only institutions
  fi
)
exec python3 -m http.server 3001 --bind 127.0.0.1

