source $(nex _config)
export nex_run_path=$(nex _plugin run)
export PATH=$nex_run_path/bin:$PATH
