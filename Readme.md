# Cluster client

Client node for ACS v2.vmchecker cluster.

## Deploy new backend

1. clone cluster-client
2. sudo ./bin/install
3. (optional: you need zip)

You need to manually create a file named ```secret.sh``` where you keep your fault token.
The format should be:
```
export VAULT_TOKEN=<value>
```

### Nomad
1. Change the name for the nomad client
2. In nomad.hcl you need to change the address to be the VPN address of the computer in "addresses" and "advertise" (better use Jinja)

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
```
3. sudo nohup ```./bin/runserver-nomad&```

### Consul
1. Change the name for the consul client
1. In consul.hcl you need to change (again) some of the addresses:
```
bind_addr = <value>
client_addr = <value>
addresses {
    http = <value>
}
```
2. sudo nohup ```./bin/runserver-consul&```

Everything should be fine and you can see nomad and consul in the web browser

Depending on what you want to run you should install qemu or docker.
