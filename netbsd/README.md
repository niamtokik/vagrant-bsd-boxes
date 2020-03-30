# NetBSD

 * full: https://app.vagrantup.com/niamtokik/boxes/netbsd
 * nox11: https://app.vagrantup.com/niamtokik/boxes/netbsd-nox11
 * minimal: https://app.vagrantup.com/niamtokik/boxes/netbsd-minimal

NOTE: This template builder is the first one I made and it is the one
used for testing.

## Default Image

To build default image, you can use directly the available `Makefile`
present in this directory. It will automatically generate a default
installation for qemu and/or virtualbox providers based on json m4
template.

```sh
# to build qemu vagrant box
make qemu

# to build virtualbox vagrant box
make virtualbox
```

This makefile should support also other providers (e.g. hyperv,
libvirt).

## Custom Image

Each JSON files are generated from m4 template files. These templates
were created to simulate an user behaviour during an installation
process based on all possible choice (at least, a big part). These
templates are available in `../template/netbsd`.

To make things easy to use, `*.json.m4` templates supports different
configuration based on flags:

| VARIABLE   | DEFAULT  | VALUES                 |
|------------|----------|------------------------|
| `INSTALL`  | full     | minimal, nox11, custom |
| `TIMEZONE` | UTC      | -                      |
| `SSHD`     | YES      | NO                     |
| `NTPD`     | NO       | YES                    |
| `CGD`      | NO       | YES                    |
| `LVM`      | NO       | YES                    |
| `NTPDATE`  | NO       | YES                    |
| `RAIDFRAME`| NO       | YES                    |
| `XDM`      | NO       | YES                    |

You can use this command to generate a custom JSON file:

```sh
# generate json builder
m4 -I../template ../template/_default.m4 \
    -DINSTALL=minimal -DNTPD=YES \
    qemu.json.m4 > qemu-minimal-ntpd.json 

# build automatically with packer
packer build qemu-minimal-ntpd.json
```

## FAQ

### Why using m4?

m4 is available practically everywhere and is pretty easy to use.

### Is this Makefile compatible with bmake or pmake?

This Makefile was tested with:

 * GNU Make
 * OpenBSD make

### How it works?

Packer supports Go templating systems. Unfortunately, this feature is
limited and should be used to set only simple variable. When it comes
to create a more complex template, we need to use a macro or
templating language. It is why m4 was taken. m4 is available on all
BSD systems and on practically all Linux distribution by default.

The idea is to create templates for each group of action, stored in m4
template library. This group of action can be added or removed from
another m4 template (JSON file). This one will give the full template.

 1. Study the different pattern from an installer
 
 2. Group them by action (e.g. install from http)
 
 3. Create a JSON template for a builders (e.g. qemu) or a systems
    (e.g. netbsd).
    
 4. Add a group of actions only activated based on flags and
    variables.
    
 5. Use the final JSON with packer
 
Make in this case is only an abstraction, to help people to build
easily the desired box.

### My setup took so much time!

Unfortunately, Packer is and remains a hack. Our installers were not
designed to talk to machine, but to talk to human. We don't have any
help from them, and must trust the installer and its output. This is
why we have lot of `<wait>` action in the different template, to
ensure everything will be okay, even for a lower system. These
`<wait>` action will be defined as variable soon.

This is why we need a way to rethink the installation process today
and find a way to interact with the installer or, like OpenBSD, create
an easy way to install a default system.

## Resources

 * https://www.netbsd.org
 * http://bxr.su/NetBSD/usr.sbin/sysinst/
 * https://man.openbsd.org/m4
 * https://www.mkssoftware.com/docs/man1/m4.1.asp
 * https://mbreen.com/m4.html
 * https://www.gnu.org/software/m4/
