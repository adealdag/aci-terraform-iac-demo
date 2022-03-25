# Remote data sources
data "terraform_remote_state" "prod-tenant" {
  backend = "remote"

  config = {
    organization = "cisco-dcn-ecosystem"
    workspaces = {
      name = "adealdag-iac-demo-tenant"
    }
  }
}
