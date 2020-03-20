@helm
@k8s
@apm
Feature: The Helm chart is following product recommended configuration for Kubernetes

Scenario: The APM Server chart will create recommended K8S resources
  Given a cluster is running
  When the "apm-server" Elastic's helm chart is installed
  Then a "Deployment" which will manage the pods
    And a "Service" which will expose the pods as network services internal to the k8s cluster
    And a "ConfigMap" resource contains the "apm-server.yml" key
    And a "ServiceAccount" resource manages RBAC
    And a "ClusterRole" resource manages RBAC
    And a "ClusterRoleBinding" resource manages RBAC
