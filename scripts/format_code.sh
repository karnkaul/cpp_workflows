#!/bin/bash

clang-format --version || exit 1

if [[ ! -d ./modules ]]; then
  echo "Please run script from the project root"
  exit 1
fi

files=$(find general/src modules/src -name "*.[hc]pp" -or -name "*.cppm")

if [[ "$files" == "" ]]; then
  echo "-- No source files found"
  exit
fi

clang-format -i $files || exit 1
echo -e "-- Formatted Files:\n$files\n"

exit
