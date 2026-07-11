resource_group = {
  rg1 = {
    name     = "rg-july12"
    location = "central india"
  }
}

vnet = {
  vnet1 = {
    name                = "julyvnet"
    location            = "central india"
    resource_group_name = "rg-july12"
    address_space       = ["10.0.0.0/16"]
  }
}

subnets = {
  subnet1 = {
    name                 = "julysubnet"
    resource_group_name  = "rg-july12"
    virtual_network_name = "julyvnet"
    address_prefixes     = ["10.0.0.1/24"]
  }
  subnet2 = {
    name                 = "julysubnet1"
    resource_group_name  = "rg-july12"
    virtual_network_name = "julyvnet"
    address_prefixes     = ["10.0.0.2/24"]
  }
  subnet3 = {
    name                 = "AzureBastionSubnet"
    resource_group_name  = "rg-july12"
    virtual_network_name = "julyvnet"
    address_prefixes     = ["10.0.0.3/24"]
  }
}

pip = {
  pip1 = {
    name                = "julypip"
    location            = "central india"
    resource_group_name = "rg-july12"
    allocation_method   = "Dynamic"

  }
}

bastion = {
  bastion1 = {
    name                = "julybastion"
    location            = "central india"
    resource_group_name = "rg-july12"
    subnet_key    = "subnet3"
    pip_key = "pip1"
      

    ip_configuration = {
      name          = "ipconfigjuly"
      
    }
  }
}