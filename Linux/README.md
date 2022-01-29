# Linux

In this directory you will find learning resources related to my Linux learning journey. I hope you find it useful. See below for details on subdirectories.

* **'key_cmds.md':** This file contains information on useful commands I've found when learning Linux.
* **'key_terms.md':** This file contains information on key terms and phrases I've found when learning Linux.

## Linux Scripts

This subdirectory will contain scripts that support the Linux portion of the Cloud Native Adventure.

---
### Deploy Linux VM in Azure

This script file contains all the commands required to complete the following:

* Set required variables
* Login to Azure and Select correct subscription
* Create Resource Group
* Create Virtual Network
* Create a Network Security Group
* Create Ubuntu VM with previously created SSH Key Pair
* Stop/Start VM so that you aren't paying for it between study sessions
* Delete resources to save money.

Once the VM is created, the returned JSON object will contain the public IP address that you can use to gain SSH access.

**DISCLAIMER:** 

I know that this is only a temporary VM for learning purposes but it's worth getting into the practice of making sure that your cloud resources are as secure as possible. With that in mind, I create a Network Security Group and lock SSH access down to my Public IP address only to protect our VM.

**Filename:** deploylinuxazvm.sh

**JSON Object returned when VM deployed (example):**

```JSON
{
  "fqdns": "",
  "id": "/subscriptions/<SubscriptionID>/resourceGroups/rg-learnlinux/providers/Microsoft.Compute/virtualMachines/vm-learnlinux",
  "location": "northeurope",
  "macAddress": "00-0D-3A-D8-C0-49",
  "powerState": "VM running",
  "privateIpAddress": "172.16.16.4",
  "publicIpAddress": "<Public IP Address>",
  "resourceGroup": "rg-learnlinux",
  "zones": ""
}
```

---
