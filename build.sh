#!/bin/bash
set -e -o pipefail

cd "$(dirname "$0")"

docker build --tag haskell haskell

docker build --tag haskell-example example
docker run --rm haskell-example docker-context | docker build --tag haskell-app -
