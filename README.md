# Installation
## With Vagrant
Vagrant is a tool for building and managing virtual machine environments in a single workflow.
If you do not wish to use Vagrant, ignore this section.

It requires [Vagrant](https://www.vagrantup.com/) and [VirtualBox](https://www.virtualbox.org/) (or [any other supported provider](https://www.vagrantup.com/intro/getting-started/providers.html))

Once downloaded and installed, simply run :
```
vagrant up
```
It will download the Box, start it and run some custom commands to get the packages used in the project.
On unix system an error abour providers might occur, to go past it, add the `-- provider virtualbox` argument to the habove command.
Once the virtual machine has started, you can simply ssh in :
```
vagrant ssh

The programs included with the Debian GNU/Linux system are free software;
the exact distribution terms for each program are described in the
individual files in /usr/share/doc/*/copyright.

Debian GNU/Linux comes with ABSOLUTELY NO WARRANTY, to the extent
permitted by applicable law.
vagrant@contrib-jessie:~$
```
And voilà ! You now have a separated developping environment !
The root folder of the project is linked to `/vagrant/adonis-experiment` in the virtual machine.
You can then start the project:
```
yarn run serve:dev
```

Once you have finished working with the virtual machine, quit the ssh session and the run:
```
vagrant halt
```
## Without Vagrant
```
yarn install
yarn run serve:dev
```
