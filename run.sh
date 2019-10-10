#!/bin/bash -e

set -x
exec nomad agent -config nomad.hcl
