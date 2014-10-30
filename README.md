## FOLDER STRUCTURE:

.vagrant - Vagrant service folder
bootstrap - Folder with privsioneres. Read more about Vagrant provisioning [here](https://docs.vagrantup.com/v2/getting-started/provisioning.html)
bootstrap.sh - UI specific provisioner
bootstrap-custom.sh - Custom project related provisioner
Vagrantfile - General Vagrant settings file

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
