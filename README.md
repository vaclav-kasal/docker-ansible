# docker-ansible

## example
```bash
docker run -it --rm vaclavkasal/ansible -v /ansible/:/ansible ansible/playbooks/client1-webhosting1.yml
```

## config example
```yaml
[defaults]
retry_files_enabled = False
callback_whitelist = profile_tasks
strategy_plugins = /root/mitogen/ansible_mitogen/plugins/strategy
strategy = mitogen_linear

[ssh_connection]
pipelining = True
```

## license
WTFPL
