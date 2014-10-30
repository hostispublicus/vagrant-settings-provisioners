## FOLDER STRUCTURE:

* .vagrant - Vagrant service folder
* bootstrap - Folder with privsioneres. Read more about Vagrant provisioning   [here](https://docs.vagrantup.com/v2/getting-started/provisioning.html)
  * bootstrap.sh - UI specific provisioner
  * bootstrap-custom.sh - Custom project related provisioner
* Vagrantfile - General Vagrant settings file

## COMMAND LIST:

**Initialize** Vagrant:
`$ vagrant init`

**Boot up** Vagrant:
`$ vagrant up`

**Connect** to Vagrant:
`$ vagrant ssh`

**Reload** provisioners:
`$ vagrant reload --provision.`

**Suspend** Vagrant:
`$ vagrant suspend`

**Shutdown** Vagrant:
`$ vagrant halt`
