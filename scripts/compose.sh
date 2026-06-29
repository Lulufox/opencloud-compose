#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")/.." && pwd)"
IMAGE_TAR="${OC_LOCAL_IMAGE_TAR:-$ROOT/image/opencloud_latest_image.tar}"
IMAGE="${OC_DOCKER_IMAGE:-opencloudeu/opencloud}:${OC_DOCKER_TAG:-latest}"

if [[ -f "$IMAGE_TAR" ]]; then
  if ! docker image inspect "$IMAGE" >/dev/null 2>&1; then
    echo "Loading OpenCloud image from $IMAGE_TAR..."
    docker load -i "$IMAGE_TAR"
  fi
else
  echo "Warning: local image archive not found at $IMAGE_TAR" >&2
fi

exec docker compose "$@"
