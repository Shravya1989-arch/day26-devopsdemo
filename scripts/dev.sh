RESOURCE_GROUP_NAME=terraform-state-rg
STAGE_SA_NAME=tfstage25shra
DEV_SA_NAME=tfdevbackend25shra
CONTAINER_NAME=tfstate

# az group create --name $RESOURCE_GROUP_NAME --location canadacentral

az storage account create --name $STAGE_SA_NAME --resource-group $RESOURCE_GROUP_NAME --location canadacentral --sku Standard_LRS

# az storage account create --name $DEV_SA_NAME --resource-group $RESOURCE_GROUP_NAME --location canadacentral --sku Standard_LRS

az storage container create --name $CONTAINER_NAME --account-name $STAGE_SA_NAME

# az storage container create --name $CONTAINER_NAME --account-name $DEV_SA_NAME