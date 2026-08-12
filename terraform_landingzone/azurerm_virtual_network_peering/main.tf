# azure_rm_resource_group "RGblock" { 
#   name     = var.rg_details.name
#   location = var.rg_details.location    
# }   

resource "azurerm_resource_group" "RGblock" {
for_each = var.rg_details
name     = each.value.name        
location = each.value.location    
}