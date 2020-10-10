# Cluster client

Client node for ACS v2.vmchecker cluster.

## Deploy new backend

1. clone cluster-client
2. sudo ./bin/install
3. (optional: you need zip)

You need to manually create a file named ```secret.sh``` where you keep your vault token (this is taken from
the UI machine - in /opt/cluster/var/vault-secrets.init - root token)
The format should be:
```
export VAULT_TOKEN=<value>
```

## Nomad
1. Change the name for the nomad client
2. In nomad.hcl you need to change the address to be the VPN address of the computer in "addresses", "advertise", "consul", "vault" (better use Jinja).
Vault address is the ip of the machine where you have the vault.

```
addresses {
    http = <value>
    rpc = <value>
    serf = <value>
}

advertise {
    http = <value>
    rpc = <value>
    serf = <value>
}
consul
{
    address = <value>
}


vault {
  enabled = true
  address = <value>
}
```
3. sudo nohup ```./bin/runserver-nomad&```

## Consul
1. Change the name for the consul client
1. In consul.hcl you need to change (again) some of the addresses:
```
bind_addr = <value>
client_addr = <value>
addresses {
    http = <value>
}

start_join = <value_nomad_master>
retry_join = <value_nomad_master>
```
2. sudo nohup ```./bin/runserver-consul&```


If the services were already running you can do:
```
sudo supervisorctl restart nomad
sudo supervisorctl restart consul
```

Everything should be fine and you can see nomad and consul in the web browser

Depending on what you want to run you should install qemu or docker.
