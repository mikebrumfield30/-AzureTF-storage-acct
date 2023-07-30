
variable "resource_group_name" {
    description = "The name of the resource group in which the resources will be created"
    type = string
    default     = "rg-az-sandbox"
}

variable "location" {
    description = "The location where module demo resource group will be created"
    type = string
    default     = "centralus"
}

variable "tags" {
    description = "A map of the tags to use for the module demo resources that are deployed"
    type        = map(string)
    default = {
        environment = "Sandbox"
        Owner = "owner@email.com"
    }
}

variable "storage_account_name" {
    description = "The name of the storage account to create"
    type = string
    default     = "sa-test-storage2203"
}