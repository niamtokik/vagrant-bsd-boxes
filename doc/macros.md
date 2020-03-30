# M4 Macros

WARNING: This documentation is a draft. Please don't use these macro
actually.

These macros and functions should be standard across all template and
must offer a high level abstraction to make templating easy to use.

## Root user

```m4
root(password, shell)
```

## Adding user

 * username: define an username
 * password: define a password
 * extra_info: not defined yet

```m4
add_user(username, password, group)
```

## Partitionning

 * type: type of the partition
   * [ufs|ufs-auto]: default partition scheme
   * ufs-manual: define manually all partition
   * lvm: (netbsd) define logical volume
   * zfs: (netbsd, freebsd) define zfs pool
   * [hammer|hammer1]: (dragonflybsd) define hammer1 fs
   * hammer2: (dragonflybsd) define hammer2 fs

```m4
partition(ufs)
partition(ufs-manual, 
	(device, root, /, begin, end),
	(device, swap, /, begin, end))
partition(zfs)
partition(lvm)
partition(hammer2)
```

## Network Configuration

```m4
network(auto)
network(manual, device, ipv4, netmask, gateway, dns)
```

## Enable Services

```m4
enable(sshd)
enable(ntpd)
enable(ntpdate)
```

## Install Package

```m4
install(sudo)
install(erlang)
```

# FAQ

## Different release, different behaviour

We will have to deal with different BSD releases and version like
current. One way to solve this issue is to create two kind of
functions:

 * standard macro, like add_user(...)
 * current macro, like current_add_user(...)

Standard macro will be compatible with all stable release (at least,
the one we will support).

Current macro will be be compatible with the current release and can
break with stable release.
