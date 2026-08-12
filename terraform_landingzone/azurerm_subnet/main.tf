# azure_rm_resource_group "RGblock" { 
#   name     = var.rg_details.name
#   location = var.rg_details.location    
# }   

# resource "azurerm_resource_group" "RGblock" {
# for_each = var.rg_details
# name     = each.value.name        
# location = each.value.location    
# }

resource "azurerm_subnet" "subnetblock" {
    for_each = var.subnet_details
    name     = each.value.name        
    resource_group_name = each.value.resource_group_name
    virtual_network_name = each.value.virtual_network_name
    address_prefixes  = each.value.address_prefixes 
}