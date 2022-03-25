resource "aci_application_profile" "payment_services" {
  tenant_dn  = 
  name       = "demo_ap"
  annotation = "tag"
  description = "from terraform"
  name_alias = "test_ap"
  prio       = "level1"
}

module "network-prod-fe-01" {
  source  = "app.terraform.io/cisco-dcn-ecosystem/network/aci"
  version = "0.0.1"

  name      = "prod_net_front_01"
  tenant_dn = aci_tenant.prod.id
  vrf_dn    = aci_vrf.prod.id

  type   = "L3"
  subnet = "192.168.1.1/24"
  public = true

  ports = [
    {
      pod_id          = "1"
      port_type       = "port"
      leaves_id       = "1101"
      port_id         = "eth1/31"
      vlan_id         = "151"
      switchport_type = "access"
    },
    {
      pod_id          = "1"
      port_type       = "pc"
      leaves_id       = "1101"
      port_id         = "ipg_n7700_l2"
      vlan_id         = "151"
      switchport_type = "trunk"
    },
    {
      pod_id          = "1"
      port_type       = "vpc"
      leaves_id       = "1101-1102"
      port_id         = "ipg_server_001"
      vlan_id         = "151"
      switchport_type = "trunk"
    }
  ]
}
