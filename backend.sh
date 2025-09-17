#!/bin/bash


resource_group="terraform"
location="eastus"

# make a globally unique, lowercase storage account name
storage_account="ter$RANDOM"
storage_account=$(echo "$storage_account")

container="tfstate"

echo "Using storage account name: $storage_account"

# create the resource group
az group create --name "$resource_group" --location "$location"

# create the storage account
az storage account create \
  --name "$storage_account" \
  --resource-group "$resource_group" \
  --location "$location" \
  --sku Standard_LRS \
  --encryption-services blob

# create the blob container using Azure AD login for auth
az storage container create \
  --name "$container" \
  --account-name "$storage_account" \

