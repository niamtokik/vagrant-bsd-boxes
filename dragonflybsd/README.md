# DragonFlyBSD

 * full: https://app.vagrantup.com/niamtokik/boxes/dragonflybsd
 * full+hammer1: https://app.vagrantup.com/niamtokik/boxes/dragonflybsd-hammer1
 * full+hammer2: https://app.vagrantup.com/niamtokik/boxes/dragonflybsd-hammer2

## Freeze during VirtualBox install

Sometime DragonFlyBSD installer freeze. Not investigate yet

## UEFI not supported on VirtualBox provider

Installation require MBR support.

## Adding vagrant in wheel group

When adding an user, this one is not correctly added
in the group. Here a command if this happens during
your installation.

```sh
pw group mod wheel -m vagrant
```

## Allow SSH password authentication

By default, SSH on DragonFlyBSD does not allow login
with password. You should disable this configuration
for vagrant (line 57).

```sh
cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bck
sed -i "s/^PasswordAuthentication/# &/" /etc/ssh/sshd_config.bck \
	> /etc/ssh/sshd_config
service sshd restart
```

## Resources

 * http://mirror-master.dragonflybsd.org/iso-images/
