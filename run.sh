#!/bin/bash -e

cd "$( dirname "${BASH_SOURCE[0]}" )"

set -x
exec nomad agent -config nomad.hcl