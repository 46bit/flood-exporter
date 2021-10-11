#!/usr/bin/env bash

set -euo pipefail

cd "$(dirname "$0")"

kubectl -n default apply $(ls *.kube.yml | sort | awk ' { print " -f " $1 } ')
