## FOLDER STRUCTURE:

Vagrant\n
|\n
|_.vagrant - Vagrant service folder\n
|\n
|_bootstrap - Folder with privsioneres. Read more about Vagrant provisioning [here](https://docs.vagrantup.com/v2/getting-started/provisioning.html)\n
| |_bootstrap.sh - UI specific provisioner\n
| |_bootstrap-custom.sh - Custom project related provisioner\n
|\n
|_Vagrantfile - General Vagrant settings file\n
|_VagrantfileReadme.txt - This file\n

## COMMAND LIST:

**INITIALIZE** Vagrant:
`$ vagrant init`

**BOOT** up Vagrant:
`$ vagrant up`

**CONNECT** to Vagrant:
`$ vagrant ssh`

**RELOAD** provisioners:
`$ vagrant reload --provision.`

**SUSPEND** Vagrant:
`$ vagrant suspend`

**SHUTDOWN** Vagrant:
`$ vagrant halt`
