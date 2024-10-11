terraform {
  backend "azurerm" {
    resource_group_name  = "azuredevops"  # Can be passed via `-backend-config=`"resource_group_name=<resource group name>"` in the `init` command.
    storage_account_name = "sensiniadaccount"                      # Can be passed via `-backend-config=`"storage_account_name=<storage account name>"` in the `init` command.
    container_name       = "prod-tfstate"                       # Can be passed via `-backend-config=`"container_name=<container name>"` in the `init` command.
    key                  = "prod.terraform.tfstate"        # Can be passed via `-backend-config=`"key=<blob key name>"` in the `init` command.
    client_id            = "33a7fc80-28c0-4d23-934e-aa7a34134ac0"  # Can also be set via `ARM_CLIENT_ID` environment variable.
    client_secret        = "xxxxxxxxx"  # Can also be set via `ARM_CLIENT_SECRET` environment variable.
    subscription_id      = "bae21dea-f66e-48ad-8647-5dd3e33c2a9c"  # Can also be set via `ARM_SUBSCRIPTION_ID` environment variable.
    tenant_id            = "e1d41e97-df11-48ba-8a96-e7d2ad4d17f9"  # Can also be set via `ARM_TENANT_ID` environment variable.
  }
}
