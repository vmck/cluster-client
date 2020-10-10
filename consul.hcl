node_name = "hell"
server_name = "hell"
bind_addr = "10.42.2.4"
client_addr = "10.42.2.4"
addresses {
  http = "10.42.2.4"
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
