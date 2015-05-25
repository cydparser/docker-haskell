#!/bin/bash
set -e

cd "$(dirname "$0")"

OUTPUT="$(docker run --rm haskell-app)"

if [[ "$OUTPUT" == "Hello world" ]]; then
  echo "Success"
else
  echo "Failure: output= $OUTPUT" >&2
  exit 1
fi
