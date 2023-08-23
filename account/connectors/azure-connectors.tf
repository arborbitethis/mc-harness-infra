
## AKS Clusters 

resource "harness_platform_connector_kubernetes" "aks_cluster" {
  identifier  = "aks_cluster_connector"
  name        = "AKS Cluster Connector"
  description = "connector for aks cluster"

  inherit_from_delegate {
    delegate_selectors = ["helm-delegate"]
  }
}

## Container registries & what else??

