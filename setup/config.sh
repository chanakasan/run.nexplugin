# temp
script_dir=$(dirname $0)
tpl_text=$(cat $script_dir/bashrc.tpl)
root_path=$HOME/dotfiles

# paths
this_plugin_name=run.nexplugin
this_plugin_path=$root_path/$this_plugin_name

# bashrc
bashrc="$HOME/.bashrc"
this_start_text='__nex_run_start'
this_end_text='__nex_run_end'
this_middle_text="${tpl_text//__s1__/$this_plugin_path}"
