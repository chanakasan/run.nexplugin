# paths
this_dir=$(dirname $0)
this_plugin_dir=run.nexplugin
root_path=$HOME/dotfiles
nex_run_path=$root_path/$this_plugin_dir

# bashrc
this_start_text='__nex_run_start'
this_end_text='__nex_run_end'
tpl_text=$(cat $this_dir/bashrc.tpl)
this_middle_text="${tpl_text//__s1__/$nex_run_path}"
