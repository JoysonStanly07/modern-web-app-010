#!/usr/bin/env bash
set -euo pipefail

TARGET_COLOR="${1:-green}"
echo "Switching traffic for modern-web-app-01 to: $TARGET_COLOR"

kubectl patch service modern-web-app-01-service -p "{\"spec\":{\"selector\":{\"version\":\"$TARGET_COLOR\"}}}"
echo "Traffic successfully switched to $TARGET_COLOR!"
