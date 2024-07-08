resource "digitalocean_droplet" "k8n_one" {
  backups              = false
  image                = "156276218"
  ipv6                 = false
  ipv6_address         = null
  monitoring           = false
  name                 = "pool-kcfug6zri-rk8dz"
  region               = "fra1"
  resize_disk          = true
  size                 = "s-1vcpu-2gb"
  tags                 = [
    "k8s",
    "k8s:8fce9fb1-608d-438b-8bd2-dba718b7cbfd",
    "k8s:worker",
    "terraform:default-node-pool",
  ]
  volume_ids           = []
  vpc_uuid             = "aab97955-20d9-4931-be2a-ee52fdcedccb"
}

resource "digitalocean_droplet" "k8n_two" {
  backups              = false
  image                = "156276218"
  ipv6                 = false
  ipv6_address         = null
  monitoring           = false
  name                 = "pool-kcfug6zri-rk8d1"
  region               = "fra1"
  resize_disk          = true
  size                 = "s-1vcpu-2gb"
  tags                 = [
    "k8s",
    "k8s:8fce9fb1-608d-438b-8bd2-dba718b7cbfd",
    "k8s:worker",
    "terraform:default-node-pool",
  ]
  volume_ids           = []
  vpc_uuid             = "aab97955-20d9-4931-be2a-ee52fdcedccb"
}