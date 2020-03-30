{ 
	"variables": {
		"os_type": "NetBSD_64",
		"repository": "ftp.fr.netbsd.org",
		"release": "9.0",
		"arch": "amd64",
		"checksum": "dea2f08778af0ab67e3a89cf01d0e34e0e60eade84288bd21d247632c414cbd934eef22f340d473b55f9603cdd829995d9d7db30acd8af881dad36cf970d2e94",
		"checksum_type": "sha512",
		"root_password": "vagrant",
		"user_password": "vagrant"
	},

	"builders": [{
		"headless": true,
		"type": "virtualbox-iso",
		"guest_os_type": "{{user `os_type`}}",
		"iso_url": "http://{{user `repository`}}/pub/NetBSD/NetBSD-{{user `release`}}/{{user `arch`}}/installation/cdrom/boot.iso",
		"iso_checksum": "{{user `checksum`}}",
		"iso_checksum_type": "{{user `checksum_type`}}",
		"ssh_username": "vagrant",
		"ssh_password": "{{user `user_password`}}",
		"boot_wait": "40s",
		"boot_command": [
			"a<enter><wait>",
			"a<enter><wait>",
			"a<enter><wait>",
			"b<enter><wait>",
			"a<enter><wait>",
			"a<enter><wait>",
			"a<enter><wait>",
			"b<enter><wait>",
			"x<enter><wait>",
			"b<enter><wait10>",
			"a<enter><wait>",
			"a<enter><wait>",
			"b<enter><wait>",
			"j<enter><wait>",
			"a<enter><wait>",
			"<enter><wait>",
			"a<enter><wait10>",
			"<enter><wait>",
			"a<enter><wait>",
			"x<enter><wait6m>",
			"a<enter><wait>",
			"<enter><wait>",
			"d<enter><wait>",
			"a<enter><wait>",
			"{{user `root_password`}}<enter><wait>",
			"{{user `root_password`}}<enter><wait>",
			"{{user `root_password`}}<enter><wait>",
			"g<enter><wait>",
			"o<enter><wait>",
			"vagrant<enter><wait>",
			"a<enter><wait>",
			"a<enter><wait>",
			"{{user `user_password`}}<enter><wait>",
			"{{user `user_password`}}<enter><wait>",
			"{{user `user_password`}}<enter><wait5>",
			"x<enter><wait>",
			"<enter><wait5>",
			"d<enter><wait5>"
			]
		}
	],

	"provisioners": [
		{ "type": "shell",
		  "inline": ["uname -a"] }
	],

	"post-processors": ["vagrant"]
}
