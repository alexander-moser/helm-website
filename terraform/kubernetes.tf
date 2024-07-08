resource "digitalocean_kubernetes_cluster" "website" {
  auto_upgrade   = false
  ha             = false
  ipv4_address   = null
  name           = "k8s-1-30-1-do-0-fra1-1719902265847"
  region         = "fra1"
  surge_upgrade  = true
  tags           = []
  version        = "1.30.1-do.0"
  vpc_uuid       = "aab97955-20d9-4931-be2a-ee52fdcedccb"

  maintenance_policy {
    day        = "any"
    start_time = "6:00"
  }

  node_pool {
    auto_scale        = false
    labels            = {}
    max_nodes         = 0
    name              = "pool-kcfug6zri"
    size              = "s-1vcpu-2gb"
    tags              = []
  }
}

