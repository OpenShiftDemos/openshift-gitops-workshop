#!/bin/bash

# Echo in OpenShift GitOps 1.5 you need to restart Dex if the cluster has been stopped and started.
NUM_USERS=100

for i in $(seq 1 $NUM_USERS);
do
  echo "Restart dex for user ${i}"
  oc rollout restart deploy argocd-dex-server -n "user${i}-argocd"
done
