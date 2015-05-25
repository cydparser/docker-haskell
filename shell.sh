#!/bin/bash
set -e

cd "$(dirname "$0")"

dkr-run() {
  local image=${1:? Missing image}
  shift
  docker run --rm -it "$@" "$image" bash
}

case "${1:-haskell}" in
  example)
    dkr-run haskell-example -v "$PWD/example/app/src":/usr/local/src/app/src
    ;;
  haskell)
    dkr-run haskell -v "$PWD/haskell/root/usr/local/bin":/usr/local/bin
    ;;
  *)
    echo "Unknown option: $1" >&2
    exit 1
    ;;
esac
