provider "flux" {
  kubernetes = {
    host                   = var.config_host
    cluster_ca_certificate = var.config_ca
    token                  = var.config_token
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
