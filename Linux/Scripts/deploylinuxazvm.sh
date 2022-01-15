#!/bin/bash

# Set variables you will need below
resourceGroupName=rg-learnlinux
vmName=vm-learnlinux
adminUsername=sysadmin
vnetName=vnet-learnlinux
vnetAddressSpace=172.16.0.0/16
snetName=snet-learnlinux
snetAddressSpace=172.16.16.0/24
nsgName=nsg-learnlinux
nsgSSHRuleName=SSH_Secure
vmImage=UbuntuLTS
sshPublicKeyPath=/home/<username>/.ssh/<keyname>.pub
location=northeurope
myPublicIP=$(curl ifconfig.me) # Obtain your public IP address and place it in a variable.

# Create an SSH Key Pair for use when creating your new linux VM.
# If you are using Linux on WSL2 or natively, you will be able to use 'ssh-keygen' out of the box. 
# For Windows 10 and above 'ssh-keygen' is also built in and can be used via the Command Line or PowerShell.

ssh-keygen -m PEM -t rsa -b 4096
# The above command will give you some interactive prompts for naming and password protecting your key pair.
# Remember to place the key pair into your '.ssh' directory.


# Use to log in to your Azure tenant. This version will open a browser window and ask you to sign in.
az login 

# Use if, like me, you are logged into multiple tenants in multiple browsers. This will give you a link and code to use instead.
az login --use-device-code 

# Use if you have access to multiple subscriptions with a single login.
az account show

# Set the active subscription. Similar to Set-AzContext in PowerShell.
az account set --subscription <SubscriptionID>

# Create Resource Group.

az group create --location $location --name $resourceGroupName

# Create Nework Security Group and add SSH rule.

az network nsg create \
  --name $nsgName \
  --resource-group $resourceGroupName

az network nsg rule create \
  --nsg-name $nsgName \
  --resource-group $resourceGroupName \
  --name $nsgSSHRuleName \
  --description "Secure SSH Access to my Public IP address only" \
  --priority 1000 \
  --access Allow \
  --direction Inbound \
  --protocol Tcp \
  --source-address-prefixes $myPublicIP \
  --destination-port-ranges 22


# Create a Virtual Network for your test VM

az network vnet create \
  --name $vnetName \
  --resource-group $resourceGroupName \
  --address-prefixes $vnetAddressSpace \
  --subnet-name $snetName \
  --subnet-prefixes $snetAddressSpace

# Add NSG to Subnet

az network vnet subnet update \
  --name $snetName \
  --vnet-name $vnetName \
  --resource-group $resourceGroupName \
  --network-security-group $nsgName 

# Create your test VM and generate SSH Key Pair for access

az vm create /
  --resource-group $resourceGroupName /
  --name $vmName /
  --image $vmImage /
  --vnet-name $vnetName /
  --subnet $snetName /
  --nsg "" /
  --admin-username $adminUsername /
  --ssh-key-values $sshPublicKeyPath /
  --output json

# You will get a JSON object back similar to the one detailed in the README.

# Save money by deleting your resources when you're done. 
# If you delete the resource group you will delete all resources contained within it.

az group delete --name $resourceGroupName