#!/usr/bin/env bash

projectPath=${PWD}

echo "Start SCDF server for k8s"

kubectl create -f ${projectPath}/kafka/
#kubectl create -f ${projectPath}/mysql/
#kubectl create -f ${projectPath}/prometheus/
#kubectl create -f ${projectPath}/grafana/
#kubectl create -f ${projectPath}/skipper/skipper-deployment.yaml
#kubectl create -f ${projectPath}/skipper/skipper-svc.yaml
#
##Authorization
#kubectl create -f ${projectPath}/server/server-roles.yaml
#kubectl create -f ${projectPath}/server/server-rolebinding.yaml
#kubectl create -f ${projectPath}/server/service-account.yaml
#
#kubectl create -f ${projectPath}/server/server-config-kafka.yaml
#kubectl create -f ${projectPath}/server/server-svc.yaml
#kubectl create -f ${projectPath}/server/server-deployment.yaml