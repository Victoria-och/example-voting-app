terraform {
  required_providers {
    kind = {
      source  = "tehcyx/kind"
    }
  }
}

provider "kind" {}

resource "kind_cluster" "default" {
  name           = "capstone-cluster"
  wait_for_ready = true
}

output "kubeconfig" {
  value = kind_cluster.default.endpoint
}
