module "simple_webapp" {
    source = "./modules"

    name = "simple-webapp"
    image = "training/webapp"
    replicas = 2
    container_port =5000
}

#deploy module in local k8s cluster 
provider "kubernetes" {
  config_path = "~/.kube/config"
  config_context = "docker-desktop"
}

