{
	"variables": {
		"repository": "ftp.fr.netbsd.org",
		"release": "9.0",
		"arch": "amd64",
		"checksum": "dea2f08778af0ab67e3a89cf01d0e34e0e60eade84288bd21d247632c414cbd934eef22f340d473b55f9603cdd829995d9d7db30acd8af881dad36cf970d2e94",
		"checksum_type": "sha512",
		"root_password": "vagrant",
		"user_name": "vagrant",
		"user_password": "vagrant",
		"disk_size": "5000M",
		"disk_format": "qcow2",
		ifelse(NETWORK, manual, [[-"ipv4": "10.0.2.15",
			"netmask": "0xffffff00", 
			"gateway": "10.0.2.2", 
			"dns": "10.0.2.3", -]])
		"hostname": "netbsd",
		"domain": "vagrant"
	},
	"builders": [{
		"type": "qemu",
		"iso_url": "http://{{user `repository`}}/pub/NetBSD/NetBSD-{{user `release`}}/{{user `arch`}}/installation/cdrom/boot.iso",
		"iso_checksum": "{{user `checksum`}}",
		"iso_checksum_type": "{{user `checksum_type`}}",
		"output_directory": "netbsd-qemu",
		"disk_size": "{{user `disk_size`}}",
		"format": "{{user `disk_format`}}",
		"accelerator": "kvm",
		"vm_name": "netbsd-{{user `release`}}",
		"net_device": "virtio-net",
		"disk_interface": "virtio",
		"ssh_username": "{{user `user_name`}}",
		"ssh_password": "{{user `user_password`}}",
		"boot_wait": "1m",
		"boot_command": [
			"a<enter><wait5s>",
			"a<enter><wait5s>",
			"a<enter><wait5s>",
			"b<enter><wait5s>",
			"a<enter><wait5s>",
			"a<enter><wait5s>",
			"a<enter><wait5s>",
			"b<enter><wait5s>",
			"x<enter><wait5s>",

			"b<enter><wait20s>",
				"a<enter><wait5s>",
				"a<enter><wait5s>",
				"b<enter><wait5s>",

			"i<enter><wait5s>",
				"a<enter><wait5s>",

			ifelse(NETWORK, manual, [[-include(netbsd/network-manual.m4)-]], [[-include(netbsd/network-auto.m4)-]])

			"x<enter><wait10m>",

			"a<enter><wait5s>",
			"<enter><wait5s>",

			include(netbsd/root-password.m4)
			include(netbsd/root-shell.m4)
			include(netbsd/add-user.m4)
			include(netbsd/timezone.m4)
			include(netbsd/enable-cgd.m4)
			include(netbsd/enable-lvm.m4)
			include(netbsd/enable-mdnsd.m4)
			include(netbsd/enable-ntpd.m4)
			include(netbsd/enable-ntpdate.m4)
			include(netbsd/enable-raidframe.m4)
			include(netbsd/enable-sshd.m4)
			include(netbsd/enable-xdm.m4)

			"x<enter><wait5s>",
			"<enter><wait5s>",
			"d<enter><wait5s>"
		]}
	],

	"provisioners": [
		{ "type": "shell",
		  "inline": ["uname -a"] }
	],

	"post-processors": ["vagrant"]
}
