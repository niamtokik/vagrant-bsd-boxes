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

## Resources

 * https://www.netbsd.org
 * http://bxr.su/NetBSD/usr.sbin/sysinst/
 * https://man.openbsd.org/m4
 * https://www.mkssoftware.com/docs/man1/m4.1.asp
 * https://mbreen.com/m4.html
 * https://www.gnu.org/software/m4/
