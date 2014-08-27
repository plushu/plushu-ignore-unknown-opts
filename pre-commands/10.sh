#!/usr/bin/env bash
set -eo pipefail; [[ -n "$PLUSHU_TRACE" ]] && set -x

while [[ "$1" == -* ]]; do
  shift
done
