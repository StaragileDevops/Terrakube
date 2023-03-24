terraform {
  required_providers {
    kubernetes = {
      source = "hashicorp/kubernetes"
      version = "2.11.0"
    }
  }
}

provider "kubernetes" {
  
  config_path    = "/root/.kube/config"
  config_context = "minikube"
}
resource "kubernetes_deployment" "medicure" {
  metadata {
    name = "medicure-example"
    labels = {
      test = "medicure-app"
    }
   
  }

  spec {
    replicas = 2

    selector {
      match_labels = {
        test = "medicure-app"
      }
    }

    template {
      metadata {
        labels = {
          test = "medicure-app"
        }
      }

      spec {
        container {
          image = "staragiledevops/medicure:1.0"
          name  = "medicure"
          
      port {
        container_port = 8083
      }

}
}
}
}
}
