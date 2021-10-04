provider "helm" {
    "kubernetes" {
        config_path = "~/.kube/config"
        config_context = "minikube"
    }
}

provider "kubernetes" {}

resource "helm_release" "example" {
    name = "helm_release_examples"
    chart = "./charts/example"   
}