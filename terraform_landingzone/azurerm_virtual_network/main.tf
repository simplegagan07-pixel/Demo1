# azure_rm_resource_group "RGblock" { 
#   name     = var.rg_details.name
#   location = var.rg_details.location    
# }   

resource "azurerm_virtual_network" "vnetblock" {
    for_each = var.vnet_details
    name     = each.value.name        
    location = each.value.location   
    resource_group_name = each.value.resource_group_name
    address_space  = each.value.address_space 
}