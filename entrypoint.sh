#!/bin/sh -l

echo ${KUBE_CONFIG_DATA} | base64 -d > kubeconfig
chmod 644 kubeconfig
export KUBECONFIG=kubeconfig

result="$($1)"
status=$?

echo $result

if [[ $status -eq 0 ]]; then exit 0; else exit 1; fi
