#!/bin/bash

TARGET=$1

echo "Scanning $TARGET..."

if [[ ! $TARGET =~ ^((25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])\.){3}(25[0-5]|2[0-4][0-9]|1[0-9]{2}|[1-9]?[0-9])$ ]]; then
  echo "Indirizzo IP non valido!"
  exit 1
fi

for PORT in {1..1024}; do
  nc -z -v -w1 $TARGET $PORT 2>&1 | grep -E "succeeded|open"
done

echo "Scan completato!"
