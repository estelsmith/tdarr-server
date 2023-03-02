#!/bin/bash

set -u
set -e
set -o pipefail

exec juicefs mount \
    --cache-dir "/juicefs-cache" \
    --cache-size "102400" \
    "${JUICEFS_REDIS_URL}" \
    /mnt
