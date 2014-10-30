# ===========================================================================
# FOLDER STRUCTURE:
# ===========================================================================

Vagrant
|
|_.vagrant - Vagrant service folder
|
|_bootstrap - Folder with privsioneres. Read more about Vagrant provisioning [here](https://docs.vagrantup.com/v2/getting-started/provisioning.html)
| |_bootstrap.sh - UI specific provisioner
| |_bootstrap-custom.sh - Custom project related provisioner
|
|_Vagrantfile - General Vagrant settings file
|_VagrantfileReadme.txt - This file

# ===========================================================================
# COMMAND LIST:
# ===========================================================================

**INITIALIZE** Vagrant:
`$ vagrant init 

**BOOT** up Vagrant:
`$ vagrant up

**CONNECT** to Vagrant:
`$ vagrant ssh

**RELOAD** provisioners:
`$ vagrant reload --provision.

**SUSPEND* Vagrant:
`$ vagrant suspend

**SHUTDOWN** Vagrant:
$ vagrant halt 
