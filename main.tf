provider "flux" {
  kubernetes = {
    config_path        = var.config_path
    host               = var.config_host
    client_certificate = var.config_crt
    token              = var.cluster_token

    # Not needed for GKE
    # cluster_ca_certificate = var.config_ca
    # client_key             = var.config_client_key
  }

  git = {
    url = "https://github.com/${var.github_repository}.git"
    http = {
      username = "git"
      password = var.github_token
    }
  }
}

resource "flux_bootstrap_git" "this" {
  path = var.target_path
}
