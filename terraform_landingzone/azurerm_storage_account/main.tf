# azure_rm_resource_group "RGblock" { 
#   name     = var.rg_details.name
#   location = var.rg_details.location    
# }   

# resource "azurerm_resource_group" "RGblock" {
# for_each = var.rg_details
# name     = each.value.name        
# location = each.value.location    
# }

resource "azurerm_storage_account" "stgblock" {
    for_each = var.storage_details
  name                     = each.value.name
  location                 = each.value.location
  resource_group_name      = each.value.resource_group_name
  account_tier             = each.value.application_tier
  account_replication_type = "LRS"
}