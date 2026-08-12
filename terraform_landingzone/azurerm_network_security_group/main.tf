# azure_rm_resource_group "RGblock" { 
#   name     = var.rg_details.name
#   location = var.rg_details.location    
# }   

resource "azurerm_network_security_group" "nsgblock" {
for_each = var.nsg_details
name     = each.value.name        
location = each.value.location    
resource_group_name = each.value.resource_group_name

ip_configuration {
    name                          = "internal"
    subnet_id                     = each.value.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}