#!/usr/bin/env bash
# Serve the current directory over HTTP on localhost:3001
set -euo pipefail

exec python3 -m http.server 3001 --bind 127.0.0.1

