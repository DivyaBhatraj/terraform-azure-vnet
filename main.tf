resource "azurerm_resource_group" "example" {
  name     = var.RGname
  location = var.location
}


resource "azurerm_virtual_network" "example" {
  name                = var.vnetname
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space       = var.addspace
}

resource "azurerm_subnet" "example" {
    for_each=var.subnet
  name                 = each.value["name"]
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = each.value ["address_prefixes"]
}


 