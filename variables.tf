variable "github_repository" {
  type        = string
  description = "GitHub repository to store Flux manifests."
}

variable "github_token" {
  type        = string
  description = "The token used to authenticate with the Git repository"
  default     = ""
}

variable "private_key" {
  type        = string
  description = "The private key used to authenticate with the Git repository."
}

variable "flux_namespace" {
  type        = string
  default     = "flux-system"
  description = "GitHub repository to store Flux manifests"
}

variable "target_path" {
  type        = string
  default     = "clusters"
  description = "Flux manifests subdirectory."
}

variable "config_path" {
  type        = string
  default     = "~/.kube/config"
  description = "The path to the kubeconfig file."
}

variable "config_host" {
  type        = string
  default     = "gke"
  description = "Cluster endpoint URL"
}

variable "config_client_key" {
  type        = string
  default     = "client_key"
  description = "Key for a cluster."
}

variable "config_crt" {
  type        = string
  default     = "crt"
  description = "Certificate for a cluster."
}

variable "config_ca" {
  type        = string
  default     = ""
  description = "CA for a cluster."
}

variable "config_token" {
  type        = string
  default     = ""
  description = "Token to authenticate against GKE cluster with."
}
