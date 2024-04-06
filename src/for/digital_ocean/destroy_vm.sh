main() {
  local vm_name=$1
  doctl compute droplet delete $vm_name
}

main $1
