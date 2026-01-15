[frontend]
${frontend_ip}

[backends]
%{for idx, ip in backend_ips~}
${ip} backend_index=${idx} backend_private_ip=${backend_private_ips[idx]}
%{endfor~}

[all:vars]
ansible_user=${ssh_user}
ansible_ssh_private_key_file=${ssh_key_path}
ansible_python_interpreter=/usr/bin/python3
