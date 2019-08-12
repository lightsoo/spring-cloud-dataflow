#!/usr/bin/env bash

projectPath=${PWD}

echo "Start SCDF server for k8s"

#delete all by label
#kubectl delete all -l app=kafka
#kubectl delete all,pvc,secrets -l app=mysql

## MySQL
#common
#kubectl create -f ${projectPath}/mysql/mysql-svc.yaml
#kubectl create -f ${projectPath}/mysql/mysql-secret.yaml
#dev
#kubectl create -f ${projectPath}/mysql/dev/
#prd
#kubectl create -f ${projectPath}/mysql/prd/

### Kafka
#kubectl create -f ${projectPath}/kafka/

### Prometheus
# to create the cluster role, binding, and service account for prometheus
#kubectl create -f ${projectPath}/prometheus/prometheus-clusterroles.yaml
#kubectl create -f ${projectPath}/prometheus/prometheus-clusterrolebinding.yaml
#kubectl create -f ${projectPath}/prometheus/prometheus-serviceaccount.yaml

# to deploy Prometheus
kubectl create -f ${projectPath}/prometheus/prometheus-configmap.yaml
kubectl create -f ${projectPath}/prometheus/prometheus-service.yaml

#dev deployment.yaml
kubectl create -f ${projectPath}/prometheus/dev/prometheus-deployment-dev.yaml
#prd deployment.yaml
#kubectl create -f ${projectPath}/prometheus/prd/prometheus-deployment-prd.yaml

### Grafana

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

#deply pod command if already pod is deployed
#kubectl apply -f ${projectPath}/mysql/dev/mysql-deployment-dev.yaml
#kubectl apply -f ${projectPath}/kafka/kafka-deployment.yaml
#kubectl apply -f ${projectPath}/kafka/kafka-zk-deployment.yaml