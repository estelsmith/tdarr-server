#!/bin/bash

set -u
set -e
set -o pipefail

mkdir -p /juice-cache

exec juicefs mount \
    --cache-dir "/juice-cache" \
    --cache-size "102400" \
    "${JUICEFS_REDIS_URL}" \
    /mnt
