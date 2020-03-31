dnl -- install in english
define(1-install-in-english, "a<enter><wait5>")
define(1-install-in-deutsch, "b<enter><wait5>")
define(1-install-in-catalan, "c<enter><wait5>")
define(1-install-in-french, "d<enter><wait5>")
define(1-install-in-polish, "e<enter><wait5>") 

dnl -- keyboard menu
define(2-select-keyboard-us-english, "b<enter><wait5>")
define(2-select-keyboard-uk-english, "c<enter><wait5>")
define(2-select-keyboard-dutch, "g<enter><wait5>")
define(2-select-keyboard-french, "i<enter><wait5>")
define(2-select-keyboard-german, "j<enter><wait5>")
define(2-select-keyboard-greek, "k<enter><wait5>")
define(2-select-keyboard-italian, "m<enter><wait5>")
define(2-select-keyboard-japanese, "n<enter><wait5>")
define(2-select-keyboard-russian, "r<enter><wait5>")
define(2-select-keyboard-us-dvorak, "A<enter><wait5>")

dnl -- install menu
define(3-netbsd-install-hard-disk, "a<enter><wait5>")
define(3-netbsd-upgrade-hard-disk, "b<enter><wait5>")
define(3-netbsd-reinstall-sets, "c<enter><wait5>")
define(3-netbsd-reboot, "d<enter><wait5>")
define(3-netbsd-utility, "e<enter><wait5>")

dnl -- install to hard disk validation
define(4-install-hard-disk-validation-yes, "b<enter><wait5>")
define(4-install-hard-disk-validation-no, "a<enter><wait5>")

dnl -- available disk
define(5-select-disk-first, "a<enter><wait5>")
define(5-select-disk-extended-partition, "b<enter><wait5>")
define(5-select-disk-exit, "x<enter><wait5>")

dnl -- partition scheme
define(6-partition-scheme-gpt, "a<enter><wait5>")
define(6-partition-scheme-mbr, "b<enter><wait5>")
define(6-partition-scheme-exit, "x<enter><wait5>")

dnl -- bios structure
define(7-bios-correct-geometry, "a<enter><wait5>")
define(7-bios-set-geometry, "b<enter><wait5>")

dnl -- select partition
define(8-select-partition-set-size, "a<enter><wait5>")
define(8-select-partition-default-size, "b<enter><wait5>") 

dnl -- set partition size
define(9-set-partition-size-add, "g<enter><wait5>")
define(9-set-partition-clone-external, "h<enter><wait5>")
define(9-set-partition-change-input, "i<enter><wait5>")
define(9-set-partition-go-on, "x<enter><wait5>")

dnl -- valid partition 
define(10-valid-partition-change, "d<enter><wait5>")
define(10-valid-partition-clone, "e<enter><wait5>")
define(10-valid-partition-ok, "x<enter><wait5>")

dnl -- validation install netbsd
define(11-valid-install-yes, "b<enter><wait5>")
define(11-valid-install-no, "a<enter><wait5>")

dnl -- select bootblock
define(12-select-bootblock-bios-console, "a<enter><wait5>")
define(12-select-bootblock-serial-port-com0, "b<enter><wait5>")
define(12-select-bootblock-serial-port-com1, "c<enter><wait5>")
define(12-select-bootblock-baud-rate, "f<enter><wait5>")
define(12-select-bootblock-existing, "g<enter><wait5>")

dnl -- select distribution
define(13-distribution-full, "a<enter><wait5>")
define(13-distribution-nox11, "b<enter><wait5>")
define(13-distribution-minimal, "c<enter><wait5>")
define(13-distribution-custom, "d<enter><wait5>")

dnl -- select media
define(14-select-media-cdrom, "a<enter><wait5>")
define(14-select-media-http, "b<enter><wait5>")
define(14-select-media-ftp, "c<enter><wait5>")
define(14-select-media-nfs, "d<enter><wait5>")
define(14-select-media-floppy, "e<enter><wait5>")
define(14-select-media-local-directory, "g<enter><wait5>")

dnl -- media cdrom
define(15-media-cdrom-device, "a<enter><wait5>")
define(15-a-media-cdrom-device, "{{user `device`}}<enter><wait5>)
define(15-media-cdrom-binary-set, "b<enter><wait5>")
define(15-b-media-cdrom-binary-set, "{{user `binary_set_directory`}}<enter><wait5>")
define(15-media-cdrom-source-set, "c<enter><wait5>")
define(15-c-media-cdrom-source-set, "{{user `source_set_directory`}}<enter><wait5>")
define(15-media-cdrom-exit, "d<enter><wait5>")
define(15-media-cdrom-continue, "x<enter><wait5>")

dnl -- media http
define(16-media-http-host, "a<enter><wait5>")
define(16-a-media-http-host, "<ctrl-u>{{user `http_host`}}<enter><wait5>")
define(16-media-http-base-directory, "b<enter><wait5>")
define(16-media-http-source-directory, "c<enter><wait5>")
define(16-media-http-user, "e<enter><wait5>")
define(16-media-http-password, "f<enter><wait5>")
define(16-media-http-proxy, "g<enter><wait5>")
define(16-media-http-transfer-directory, "h<enter><wait5>")
define(16-media-http-delete-after, "i<enter><wait5>")
define(16-media-http-configure-network, "j<enter><wait5>")
define(16-media-http-exit, "k<enter><wait5>")
define(16-media-http-get-distribution, "x<enter><wait5>")

dnl -- configure network
define(17-network-interface, "a<enter><wait5>")
define(17-network-cancel, "x<enter><wait5>")

dnl -- configure network - media type
dnl -- warning: qemu need to remove ipv6 support
define(18-network-media-type, "{{user `network_media_type`}}<enter><wait5>
define(18-network-auto-conf-yes, "a<enter><wait30s>")
define(18-network-dns-domain, "{{user `domain`}}<enter><wait5>")
define(18-network-ok-yes, "a<enter><wait5>")
define(18-network-ok-no, "b<enter><wait5>")
define(18-network-auto-conf-no, "b<enter><wait5>")

dnl -- configure network manual
define(19-network-manual-hostname, "{{user `hostname`}}<enter><wait5>")
define(19-network-manual-domain, "{{user `domain`}}<enter><wait5>")
define(19-network-manual-ipv4, "{{user `ipv4`}}<enter><wait5>")
define(19-network-manual-network, "{{user `netmask`}}<enter><wait5>")
define(19-network-manual-gateway, "{{user `gateway`}}<enter><wait5>")
define(19-network-manual-dns-server-google-v4, "a<enter><wait5>")
define(19-network-manual-dns-server-google-v6, "c<enter><wait5>")
define(19-network-manual-dns-other, "e<enter><wait5>")

dnl -- select distribution set
define(20-distribution-set-yes, "a<enter><wait5>")
define(20-distribution-set-no, "b<enter><wait5>")

dnl -- extraction complete
define(21-extraction-complete, "<enter><wait5s>")

dnl -- configure items as needed
define(22-configure-item-network, "a<enter><wait5s>")
define(22-configure-item-timezone, "b<enter><wait5s>")
define(22-configure-item-root-shell, "c<enter><wait5s>")
define(22-configure-item-root-password, "d<enter><wait5s>")
define(22-configure-item-enable-installation-binary, "e<enter><wait5s>")
define(22-configure-item-fetch-pkgsrc, "f<enter><wait5s>")
define(22-configure-item-enable-sshd, "g<enter><wait5s>")
define(22-configure-item-enable-ntpd, "h<enter><wait5s>")
define(22-configure-item-enable-ntpdate, "i<enter><wait5s>")
define(22-configure-item-enable-mdnsd, "j<enter><wait5s>")
define(22-configure-item-enable-xdm, "k<enter><wait5s>")
define(22-configure-item-enable-cgd, "l<enter><wait5s>")
define(22-configure-item-enable-lvm, "m<enter><wait5s>")
define(22-configure-item-enable-raidframe, "n<enter><wait5s>")
define(22-configure-item-add-user, "o<enter><wait5s>")
define(22-configure-item-finish, "x<enter><wait5s>")

dnl -- installation complete
define(23-installation-complete, "<enter><wait5>")

dnl -- add user
define(24-add-user-name, "{{user `username`}}<enter><wait5>")
define(24-add-user-group-wheel-yes, "a<enter><wait5>")
define(24-add-user-shell-sh, "a<enter><wait5>")
define(24-add-user-shell-ksh, "b<enter><wait5>")
define(24-add-user-shell-csh, "c<enter><wait5>")
define(24-add-user-password, "{{user `user_password`}}<enter><wait5>")
define(24-add-user-password-confirm, "{{user `user_password`}}<enter><wait5>")

dnl -- extended partitionning
define(25-extended-partition-select-first, "a<enter><wait5>")
define(25-extended-partition-create-crypto-volume, "b<enter><wait5>")
define(25-extended-partition-create-virtual-disk, "c<enter><wait5>")
define(25-extended-partition-create-volume-group, "d<enter><wait5>")
define(25-extended-partition-create-software-raid, "e<enter><wait5>")
define(25-extended-partition-update-device-list, "f<enter><wait5>")
define(25-extended-partition-save-changes, "g<enter><wait5>")
define(25-extended-partition-finish, "x<enter><wait5>")

dnl -- selected disk
define(26-selected-disk-edit-partition, "a<enter><wait5>")
define(26-selected-disk-switch-scheme, "b<enter><wait5>")
define(26-selected-disk-format-as-raid, "c<enter><wait5>")
define(26-selected-disk-format-as-lvm-pv, "d<enter><wait5>")
define(26-selected-disk-encrypt, "e<enter><wait5>")
define(26-selected-disk-safe-erase, "f<enter><wait5>")
define(26-selected-disk-undo, "g<enter><wait5>")
define(26-selected-disk-unconfigure, "h<enter><wait5>")

dnl -- selected disk scheme
define(27-selected-disk-scheme-gpt, "a<enter><wait5>")
define(27-selected-disk-scheme-mbr, "b<enter><wait5>")
define(27-selected-disk-scheme-disklabel, "c<enter><wait5>")

dnl -- cryptographic volume
