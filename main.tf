locals {
  location    = "eastus"
  environment = "test"
}

module "resource_group" {
  source              = "./ResourceGroup"
  resource_group_name = "rg-new"
  location            = local.location
  tags = {
    environment = local.environment
  }
}

module "virtual_network" {
  source              = "./Virtual_network"
  virtual_network_name = "demo-vnet"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  vnet_address_space       = ["10.0.0.0/16"] 
}

module "subnet" {
  source              = "./Subnet"
  resource_group_name = module.resource_group.resource_group_name
  virtual_network_name = module.virtual_network.virtual_network_name
  subnet_name         = "demo-subnet"
  address_prefixes    = ["10.0.1.0/24"]
}

module "public_ip" {
  source              = "./public_IP"
  public_ip_name      = "demo-public-ip"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  allocation_method   = "Static"
  sku                 = "Basic"
}

module "nsg_ssh" {
  source              = "./Network_Security_Group_SSH"
  nsg_ssh_name        = "demo-nsg-ssh"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  tags = {
    environment = local.environment
  }
}

module "nic" {
  source              = "./NIC"
  nic_name            = "demo-nic"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  subnet_id           = module.subnet.subnet_id
  public_ip_id        = module.public_ip.public_ip_id
  tags = {
    environment = local.environment
  }
}

module "linux_vm" {
  source              = "./Linux_Virtual_Machine"
  vm_name             = "demo-linux-vm"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  network_interface_ids = [module.nic.nic_id]
  vm_username         = "azureadmin"
  vm_password         = "P@ssw0rd1234"
  tags = {
    environment = local.environment
  }
}

module "storage" {
  source              = "./storage"
  storage_account_name = "demosaacct12345"
  resource_group_name = module.resource_group.resource_group_name
  location            = local.location
  tags = {
    environment = local.environment
  }
}
