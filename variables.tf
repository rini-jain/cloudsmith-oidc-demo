variable "org" {}
variable "repo" {}
variable "service_slug" {}
variable "api_key" {
  description = "Cloudsmith short-lived token (via OIDC)"
  sensitive   = true
}
