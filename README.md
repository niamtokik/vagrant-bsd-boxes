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

# FAQ

## Why this project?

 * check different kind of BSD installer
   * simulate users behaviours
   * ensure current version is working
   * ensure installer is working
   * ensure virtual machine is booting
   * ensure kernel is working (with local test)
   * ensure userland is working (with local test)
   
 * offer standard and up to date virtual machine
   * security patch by default
   * with minimal configuration
   * base image for deploying other services
   
 * offer a quick way to deploy BSD systems
   * packer builder
   * vagrant image compatible
   * multi-support (virtualbox, qemu, libvirt, hyper-v...)
   
 * find better alternative to install BSD systems
   * new installer, faster, easier and better
   * optimizing the installation process
   * with cloud computing, we need a better wy to install and deploy
     BSD systems

 * for my own projects
   * articles
   * books
   * training

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

## Can I provision my own VM?

Yes (manually)... And no (automatically) at this time. 

## What OS are you using?

Void-Linux 

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
