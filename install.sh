#!/bin/bash -e

(
  set -x
  curl -OL https://releases.hashicorp.com/nomad/0.9.6/nomad_0.9.6_linux_amd64.zip
  unzip nomad_0.9.6_linux_amd64.zip
  sudo mv nomad /usr/local/bin/
  rm nomad_0.9.6_linux_amd64.zip
)
