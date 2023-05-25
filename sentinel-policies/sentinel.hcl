module "tfplan-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "https://raw.githubusercontent.com/hashicorp/terraform-sentinel-policies/main/common-functions/tfconfig-functions/tfconfig-functions.sentinel"
}

policy "aci-bridge-domain-golden-rules" {
  source            = "./verify-bd-best-practices.sentinel"
  enforcement_level = "hard-mandatory"
}
