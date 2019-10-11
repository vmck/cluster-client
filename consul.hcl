node_name = "acs-quark"
server_name = "acs-quark"
bind_addr = "10.42.2.2"
client_addr = "10.42.2.2"
addresses {
  http = "10.42.2.2"
}
data_dir = "/opt/cluster-client/var/consul"
datacenter = "dc1"
ui = true
start_join = ["10.42.2.1"]
retry_join = ["10.42.2.1"]
# telemetry {
#   dogstatsd_addr = "10.42.1.1:8125"
#   disable_hostname = false
# }
