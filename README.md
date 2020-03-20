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

## OpenBSD

 * classical install
 * fde install

## FreeBSD

 * full install (ufs)
 * fde install (ufs)

## NetBSD

 * full install
 * no x11 install
 * minimal install

## DragonFlyBSD

 * full install

## HardenedBSD

 * full install
 * fde install

## OPNSense

 * full install

# FAQ

## What I need?

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

