resource "digitalocean_loadbalancer" "public" {
  disable_lets_encrypt_dns_records = false
  droplet_ids                      = [
    digitalocean_droplet.k8n_one.id,
    digitalocean_droplet.k8n_two.id
  ]
  droplet_tag                      = null
  enable_backend_keepalive         = false
  enable_proxy_protocol            = false
  http_idle_timeout_seconds        = 60
  name                             = "a1130ce9041064680ac5bc786c9fa56e"
  project_id                       = "d0704c65-362f-4d68-8826-ff764890ab50"
  redirect_http_to_https           = false
  region                           = "fra1"
  size_unit                        = 1
  vpc_uuid                         = "aab97955-20d9-4931-be2a-ee52fdcedccb"

  firewall {
    allow = []
    deny  = []
  }

  forwarding_rule {
    certificate_name = null
    entry_port       = 443
    entry_protocol   = "tcp"
    target_port      = 30632
    target_protocol  = "tcp"
    tls_passthrough  = false
  }

  forwarding_rule {
    certificate_name = null
    entry_port       = 80
    entry_protocol   = "tcp"
    target_port      = 31256
    target_protocol  = "tcp"
    tls_passthrough  = false
  }

  healthcheck {
    check_interval_seconds   = 3
    healthy_threshold        = 5
    path                     = "/healthz"
    port                     = 10256
    protocol                 = "http"
    response_timeout_seconds = 5
    unhealthy_threshold      = 3
  }

  sticky_sessions {
    cookie_name        = null
    type               = "none"
  }
}