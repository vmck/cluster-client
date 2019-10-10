name = "acs-quark"
data_dir = "/opt/cluster-client/var/nomad"
leave_on_interrupt = true
leave_on_terminate = true

addresses {
  http = "10.42.2.2"
  rpc = "10.42.2.2"
  serf = "10.42.2.2"
}

advertise {
  http = "10.42.2.2"
  rpc = "10.42.2.2"
  serf = "10.42.2.2"
}

client {
  enabled = true
  network_interface = "acs"
  servers = ["10.42.2.1:4647"]
  memory_total_mb = 0 # autodetect


  gc_max_allocs = 300
  meta {
    vmck_worker = true
  }
  options {
    "fingerprint.blacklist" = "env_aws"
    "docker.caps.whitelist" = "NET_ADMIN,CHOWN,DAC_OVERRIDE,FSETID,FOWNER,MKNOD,NET_RAW,SETGID,SETUID,SETFCAP, SETPCAP,NET_BIND_SERVICE,SYS_CHROOT,KILL,AUDIT_WRITE"
    "docker.privileged.enabled" = "true"
  }
}

plugin "raw_exec" {
  config {
    enabled = true
  }
}

consul {
  address = "10.42.2.1:8500"
}

vault {
  enabled = true
  address = "http://10.42.2.1:8200"
}

telemetry {
  collection_interval = "10s"
  disable_hostname = false
  prometheus_metrics = true
  publish_allocation_metrics = true
  publish_node_metrics = true
}
