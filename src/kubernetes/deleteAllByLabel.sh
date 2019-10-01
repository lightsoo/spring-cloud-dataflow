#!/usr/bin/env bash

projectPath=${PWD}

echo "Start SCDF server for k8s"

#delete all by label
#kubectl delete all -l app=kafka
#kubectl delete all,pvc,secrets -l app=mysql
#kubectl delete all,cm,svc,secrets -l app=grafana

#kubectl delete role scdf-role
#kubectl delete rolebinding scdf-rb
#kubectl delete serviceaccount scdf-sa

#kubectl delete all,cm -l app=skipper
kubectl delete all,cm -l app=scdf-server
#kubectl delete secrets -l app=mysql
