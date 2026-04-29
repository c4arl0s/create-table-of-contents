#!/bin/bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
SOURCE_SCRIPT="${SCRIPT_DIR}/readme-navigator.sh"
TARGET_LINK="/usr/local/bin/readme-navigator"

if [[ ! -f "${SOURCE_SCRIPT}" ]]; then
  echo "Error: source script not found at ${SOURCE_SCRIPT}"
  exit 1
fi

chmod +x "${SOURCE_SCRIPT}"

if [[ -L "${TARGET_LINK}" || -e "${TARGET_LINK}" ]]; then
  echo "Removing existing ${TARGET_LINK}"
  sudo rm -f "${TARGET_LINK}"
fi

echo "Creating symbolic link:"
echo "${TARGET_LINK} -> ${SOURCE_SCRIPT}"
sudo ln -s "${SOURCE_SCRIPT}" "${TARGET_LINK}"

echo "Installation complete."
echo "Run it with: readme-navigator <content-file>"
