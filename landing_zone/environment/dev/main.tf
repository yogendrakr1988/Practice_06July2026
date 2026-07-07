module "rg" {
  source = "../../child_module/resource_group"
  rgs    = var.resource_group
}

module "vnet" {
  depends_on = [module.rg]
  source     = "../../child_module/virtual_network"
  vnet       = var.vnet
}

module "subnets" {
  depends_on = [module.vnet]
  source     = "../../child_module/subnet"

  subnets = var.subnets

}

module "pip" {
  depends_on = [module.rg]
  source     = "../../child_module/pip"
  pip        = var.pip

}

module "bastion" {
  depends_on = [module.rg, module.subnets,module.pip]
  source     = "../../child_module/bastion"
  bastion    = var.bastion

  subnet_ids    = module.subnets.subnet_ids
  pip_ids = module.pip.pip_ids

}
 