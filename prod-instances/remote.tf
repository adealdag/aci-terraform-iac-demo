# Remote data sources
data "terraform_remote_state" "prod-networks" {
  backend = "remote"

  config = {
    organization = "cisco-dcn-ecosystem"
    workspaces = {
      name = "adealdag-iac-demo-networks"
    }
  }
}
