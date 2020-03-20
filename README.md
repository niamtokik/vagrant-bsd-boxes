# Vagrant Image Builder for *BSD 

This project was created to add more BSD public image on vagrant. BSD
are open-source, so, all this code is freely available

It will support these providers:

 * virtualbox
 * qemu/kvm and xen
 * libvirt
 * hyper-v

## Usage

On Linux systems:

```sh
make openbsd
```

On BSD systems:

```sh
gmake openbsd
```

# Support

Only amd64 (or x86_64) are supported at the moment.

## [OpenBSD](https://www.openbsd.org/)

 * full install
   * https://app.vagrantup.com/niamtokik/boxes/openbsd-current
   * https://app.vagrantup.com/niamtokik/boxes/openbsd-6.6
   
 * fde + full install
   * wip

## [FreeBSD](https://www.freebsd.org/)

 * full install (ufs)
 * fde + full install (ufs)

## [NetBSD](https://www.netbsd.org/)

 * full install
   * https://app.vagrantup.com/niamtokik/boxes/netbsd-9
 * no x11 install
   * https://app.vagrantup.com/niamtokik/boxes/netbsd-9-nox11
 * minimal install
   * https://app.vagrantup.com/niamtokik/boxes/netbsd-9-minimal

## [DragonFlyBSD](https://www.dragonflybsd.org)

 * full install
   * https://app.vagrantup.com/niamtokik/boxes/dragonflybsd

## [HardenedBSD](https://hardenedbsd.org/)

 * full install
   * https://app.vagrantup.com/niamtokik/boxes/hardenedbsd-12
 * fde install
   * wip

## [OPNSense](https://opnsense.org/)

 * full install
   * wip

## [BSDRP](https://bsdrp.net/)

 * full install
   * wip

# FAQ

## What is the requirement?

 * operating system supporting one of the previous listed providers:
   * Windows 10 (hyper-v)
   * Linux/BSD (virtualbox, qemu/kvm, xen)
   * MacOS (virtualbox)
 * packer
 * vagrant

## How it works?

By using Packer from Hashicorp. You can execute manually all JSON
template and add your own value.

## How to push on Vagrant Cloud?

You can set your credential with vagrant cloud.

```sh
vagrant cloud auth login
```

## How to add custom hypervisor support?

If you mean support for bhyve or vmm, it's a work in progress. You can
find custom providers on github.

## I don't want to build, just want to use it...

You can add one image directly in your `Vagrantfile` or take a look on
my [profile](https://app.vagrantup.com/niamtokik).

## How to integrate in CI/CD?

NOTE: Work in progress

### Jenkins

wip

### Buildbot

wip

### Travis-CI

wip

### Gitlab CICD

wip
