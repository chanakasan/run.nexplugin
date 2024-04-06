#!/bin/bash

set -e

main() {
  local plugin_dir=run.nexplugin
  local start_text='__nex_run_start'
  local end_text='__nex_run_end'
  local bashrc="$HOME/.bashrc"
  local root_path=$HOME/dotfiles
  local nex_run_path=$root_path/$plugin_dir
  start
  remove_from_bashrc
  copy_to_bashrc
  finish
}

start() {
  echo " Installing Plugin - Nex Bin"
}

finish() {
  echo " done"
  echo
}

remove_from_bashrc() {
  sed -i '/#'$start_text'/,/#'$end_text'/{d}' $bashrc
}

copy_to_bashrc() {
  echo "" >> $bashrc
  echo "#$start_text" >> $bashrc
  echo 'export nex_run_path='$nex_run_path >> $bashrc
  echo 'export PATH=$nex_run_path/bin:$PATH' >> $bashrc
  # echo 'source $nex_run_path/src/bash.sh' >> $bashrc
  echo "#$end_text" >> $bashrc
  echo "" >> $bashrc
}

# _end_
main
