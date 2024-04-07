#!/bin/bash

set -e

source $(dirname "$0")/config.sh
source $(dirname "$0")/lib.sh

main() {
  local bashrc="$HOME/.bashrc"
  start
  remove_from_bashrc
  copy_to_bashrc
  finish
}

main
