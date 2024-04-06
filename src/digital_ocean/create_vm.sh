main() {
  local vm_name="$1"
  local ssh_key_print=$(ssh-keygen -E md5 -lf ~/.ssh/id_rsa.pub | cut -b 10-56)
  create_vm
}

create_vm() {
  doctl compute droplet create $vm_name --size s-2vcpu-4gb --image ubuntu-20-04-x64 --region sgp1 --ssh-keys $ssh_key_print --wait
}

main $@