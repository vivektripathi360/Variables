module "vk" {
source = "../modul/rg"
 rg_name     = "vk_rg12324"
 location = "eastus"
}


module "stg" {
  depends_on = [ module.vk ]
    source = "../modul/storageaccount"
 stg1 = "vkstg2324434"
 location = "eastus"
 resource_group_name = "vk_rg12324"
  account_tier = "Standard"
account_replication_type = "LRS"

}
