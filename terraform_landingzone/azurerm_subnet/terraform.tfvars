subnet_details = {
  subnet1 = {
    name                = "frontSubnet1"
    virtual_network_name = "VNET1"
    resource_group_name  = "RG_gagan_01072026"
    address_prefixes   = ["10.0.1.0/24"]
  }
    subnet2 = {

    name                = "frontSubnet2"

    virtual_network_name = "VNET1"

    resource_group_name  = "RG_gagan_01072026"

    address_prefixes   = ["10.0.2.0/24"]

  }

}