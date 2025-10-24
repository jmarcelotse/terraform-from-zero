module "resourcegroup" {
  count = 2
    source = "./resourcegroup"
    resource_group_name = "rodnet-rg-${count.index}"
    location = "EASTUS"
}

module "virtualnetwork" {
  count = 2
  source = "./virtualnetwork"
  virtual_network_name = "rodnet-vnet"
  location = module.resourcegroup[count.index].location
  resource_group_name = module.resourcegroup[count.index].resource_group_name
  address_space = ["10.0.0.0/20"]
  subnet_name = "internal"
  subnet_prefix = "10.0.1.0/24"
  environment = "staging"

  depends_on = [
    module.resourcegroup
  ]
}

module "public_ip" {
  for_each = { for rg in module.resourcegroup : rg.resource_group_name => rg }
  source = "./public_ip"
  pip_name = "${each.value.resource_group_name}-pip"
  pip_rg = each.value.resource_group_name
  location = each.value.location
  method = "Static"
}