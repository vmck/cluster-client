node_name = "hell"
server_name = "hell"
bind_addr = "10.42.1.3"
client_addr = "10.42.1.3"
addresses {
  http = "10.42.1.3"
}
data_dir = "/opt/cluster-client/var/consul"
datacenter = "dc1"
ui = true
start_join = ["10.42.1.1"]
retry_join = ["10.42.1.1"]
# telemetry {
#   dogstatsd_addr = "10.42.1.1:8125"
#   disable_hostname = false
# }
