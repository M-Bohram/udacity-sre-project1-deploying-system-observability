#!/bin/bash

helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo update

helm install blackbox prometheus-community/prometheus-blackbox-exporter -n monitoring -f blackbox-values.yaml