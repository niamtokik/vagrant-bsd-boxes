dnl -- install in english
dnl -- select the installation process language
dnl -- does not change anything
define(_01_install_in_english, "a<enter><wait5>,")
define(_01_install_in_deutsch, "b<enter><wait5>,")
define(_01_install_in_catalan, "c<enter><wait5>,")
define(_01_install_in_french, "d<enter><wait5>,")
define(_01_install_in_polish, "e<enter><wait5>") 

dnl -- keyboard menu
dnl -- select the keyboard layout for the installation
define(_02_select_keyboard_unchanged, "a<enter><wait5>,")
define(_02_select_keyboard_us_english, "b<enter><wait5>,")
define(_02_select_keyboard_uk_english, "c<enter><wait5>,")
define(_02_select_keyboard_dutch, "g<enter><wait5>,")
define(_02_select_keyboard_french, "i<enter><wait5>,")
define(_02_select_keyboard_german, "j<enter><wait5>,")
define(_02_select_keyboard_greek, "k<enter><wait5>,")
define(_02_select_keyboard_italian, "m<enter><wait5>,")
define(_02_select_keyboard_japanese, "n<enter><wait5>,")
define(_02_select_keyboard_russian, "r<enter><wait5>,")
define(_02_select_keyboard_turkish, "w<enter><wait5>,")
define(_02_select_keyboard_ukrainian, "y<enter><wait5>,")
define(_02_select_keyboard_us_colemak, "z<enter><wait5>,")
define(_02_select_keyboard_us_dvorak, "A<enter><wait5>,")

dnl __ install menu
dnl __ main installation menu
define(_03_netbsd_install_hard_disk, "a<enter><wait5>,")
define(_03_netbsd_upgrade_hard_disk, "b<enter><wait5>,")
define(_03_netbsd_reinstall_sets, "c<enter><wait5>,")
define(_03_netbsd_reboot, "d<enter><wait5>,")
define(_03_netbsd_utility, "e<enter><wait5>,")
define(_03_netbsd_config_menu, "f<enter><wait5>,")
define(_03_netbsd_config_exit, "x<enter><wait5>,")

dnl __ install to hard disk validation
dnl __ by default its not
define(_04_install_hard_disk_validation_yes, "b<enter><wait5>,")
define(_04_install_hard_disk_validation_no, "a<enter><wait5>,")

dnl __ available disk
dnl __ the list of the different available hard drive
dnl __ in this case we are supporting only one.
dnl __ a dynamic macro should be created
define(_05_select_disk_first, "a<enter><wait5>,")
define(_05_select_disk_extended_partition, "b<enter><wait5>,")
define(_05_select_disk_exit, "x<enter><wait5>,")

dnl __ partition scheme
define(_06_partition_scheme_gpt, "a<enter><wait5>,")
define(_06_partition_scheme_mbr, "b<enter><wait5>,")
define(_06_partition_scheme_exit, "x<enter><wait5>,")

dnl __ bios structure
define(_07_bios_correct_geometry, "a<enter><wait5>,")
define(_07_bios_set_geometry, "b<enter><wait5>,")

dnl __ select partition
define(_08_select_partition_set_size, "a<enter><wait5>,")
define(_08_select_partition_default_size, "b<enter><wait5>") 

dnl __ set partition size
define(_09_set_partition_size_add, "g<enter><wait5>,")
define(_09_set_partition_clone_external, "h<enter><wait5>,")
define(_09_set_partition_change_input, "i<enter><wait5>,")
define(_09_set_partition_go_on, "x<enter><wait5>,")

dnl __ valid partition 
define(_10_valid_partition_change, "d<enter><wait5>,")
define(_10_valid_partition_clone, "e<enter><wait5>,")
define(_10_valid_partition_ok, "x<enter><wait5>,")

dnl __ validation install netbsd
define(_11_valid_install_yes, "b<enter><wait5>,")
define(_11_valid_install_no, "a<enter><wait5>,")

dnl __ select bootblock
define(_12_select_bootblock_bios_console, "a<enter><wait5>,")
define(_12_select_bootblock_serial_port_com0, "b<enter><wait5>,")
define(_12_select_bootblock_serial_port_com1, "c<enter><wait5>,")
define(_12_select_bootblock_baud_rate, "f<enter><wait5>,")
define(_12_select_bootblock_existing, "g<enter><wait5>,")

dnl __ select distribution
define(_13_distribution_full, "a<enter><wait5>,")
define(_13_distribution_nox11, "b<enter><wait5>,")
define(_13_distribution_minimal, "c<enter><wait5>,")
define(_13_distribution_custom, "d<enter><wait5>,")

dnl __ select media
define(_14_select_media_cdrom, "a<enter><wait5>,")
define(_14_select_media_http, "b<enter><wait5>,")
define(_14_select_media_ftp, "c<enter><wait5>,")
define(_14_select_media_nfs, "d<enter><wait5>,")
define(_14_select_media_floppy, "e<enter><wait5>,")
define(_14_select_media_local_directory, "g<enter><wait5>,")

dnl __ media cdrom
define(_15_media_cdrom_device, "a<enter><wait5>,")
define(_15_a_media_cdrom_device, "{{user `device`}}<enter><wait5>,")
define(_15_media_cdrom_binary_set, "b<enter><wait5>,")
define(_15_b_media_cdrom_binary_set, "{{user `binary_set_directory`}}<enter><wait5>,")
define(_15_media_cdrom_source_set, "c<enter><wait5>,")
define(_15_c_media_cdrom_source_set, "{{user `source_set_directory`}}<enter><wait5>,")
define(_15_media_cdrom_exit, "d<enter><wait5>,")
define(_15_media_cdrom_continue, "x<enter><wait5>,")

dnl __ media http
define(_16_media_http_host, "a<enter><wait5>,")
define(_16_a_media_http_host, "<ctrl_u>{{user `http_host`}}<enter><wait5>,")
define(_16_media_http_base_directory, "b<enter><wait5>,")
define(_16_media_http_source_directory, "c<enter><wait5>,")
define(_16_media_http_user, "e<enter><wait5>,")
define(_16_media_http_password, "f<enter><wait5>,")
define(_16_media_http_proxy, "g<enter><wait5>,")
define(_16_media_http_transfer_directory, "h<enter><wait5>,")
define(_16_media_http_delete_after, "i<enter><wait5>,")
define(_16_media_http_configure_network, "j<enter><wait5>,")
define(_16_media_http_exit, "k<enter><wait5>,")
define(_16_media_http_get_distribution, "x<enter><wait5>,")

dnl __ configure network
define(_17_network_interface, "a<enter><wait5>,")
define(_17_network_cancel, "x<enter><wait5>,")

dnl __ configure network _ media type
dnl __ warning: qemu need to remove ipv6 support
define(_18_network_media_type, "{{user `network_media_type`}}<enter><wait5>,")
define(_18_network_auto_conf_yes, "a<enter><wait30s>,")
define(_18_network_dns_domain, "{{user `domain`}}<enter><wait5>,")
define(_18_network_ok_yes, "a<enter><wait5>,")
define(_18_network_ok_no, "b<enter><wait5>,")
define(_18_network_auto_conf_no, "b<enter><wait5>,")

dnl __ configure network manual
define(_19_network_manual_hostname, "{{user `hostname`}}<enter><wait5>,")
define(_19_network_manual_domain, "{{user `domain`}}<enter><wait5>,")
define(_19_network_manual_ipv4, "{{user `ipv4`}}<enter><wait5>,")
define(_19_network_manual_network, "{{user `netmask`}}<enter><wait5>,")
define(_19_network_manual_gateway, "{{user `gateway`}}<enter><wait5>,")
define(_19_network_manual_dns_server_google_v4, "a<enter><wait5>,")
define(_19_network_manual_dns_server_google_v6, "c<enter><wait5>,")
define(_19_network_manual_dns_other, "e<enter><wait5>,")

dnl __ select distribution set
define(_20_distribution_set_yes, "a<enter><wait5>,")
define(_20_distribution_set_no, "b<enter><wait5>,")

dnl __ extraction complete
define(_21_extraction_complete, "<enter><wait5s>,")

dnl __ configure items as needed
define(_22_configure_item_network, "a<enter><wait5s>,")
define(_22_configure_item_timezone, "b<enter><wait5s>,")
define(_22_configure_item_root_shell, "c<enter><wait5s>,")
define(_22_configure_item_root_password, "d<enter><wait5s>,")
define(_22_configure_item_enable_installation_binary, "e<enter><wait5s>,")
define(_22_configure_item_fetch_pkgsrc, "f<enter><wait5s>,")
define(_22_configure_item_enable_sshd, "g<enter><wait5s>,")
define(_22_configure_item_enable_ntpd, "h<enter><wait5s>,")
define(_22_configure_item_enable_ntpdate, "i<enter><wait5s>,")
define(_22_configure_item_enable_mdnsd, "j<enter><wait5s>,")
define(_22_configure_item_enable_xdm, "k<enter><wait5s>,")
define(_22_configure_item_enable_cgd, "l<enter><wait5s>,")
define(_22_configure_item_enable_lvm, "m<enter><wait5s>,")
define(_22_configure_item_enable_raidframe, "n<enter><wait5s>,")
define(_22_configure_item_add_user, "o<enter><wait5s>,")
define(_22_configure_item_finish, "x<enter><wait5s>,")

dnl __ installation complete
define(_23_installation_complete, "<enter><wait5>,")

dnl __ add user
define(_24_add_user_name, "{{user `username`}}<enter><wait5>,")
define(_24_add_user_group_wheel_yes, "a<enter><wait5>,")
define(_24_add_user_shell_sh, "a<enter><wait5>,")
define(_24_add_user_shell_ksh, "b<enter><wait5>,")
define(_24_add_user_shell_csh, "c<enter><wait5>,")
define(_24_add_user_password, "{{user `user_password`}}<enter><wait5>,")
define(_24_add_user_password_confirm, "{{user `user_password`}}<enter><wait5>,")

dnl __ extended partitionning
define(_25_extended_partition_select_first, "a<enter><wait5>,")
define(_25_extended_partition_create_crypto_volume, "b<enter><wait5>,")
define(_25_extended_partition_create_virtual_disk, "c<enter><wait5>,")
define(_25_extended_partition_create_volume_group, "d<enter><wait5>,")
define(_25_extended_partition_create_software_raid, "e<enter><wait5>,")
define(_25_extended_partition_update_device_list, "f<enter><wait5>,")
define(_25_extended_partition_save_changes, "g<enter><wait5>,")
define(_25_extended_partition_finish, "x<enter><wait5>,")

dnl __ selected disk
define(_26_selected_disk_edit_partition, "a<enter><wait5>,")
define(_26_selected_disk_switch_scheme, "b<enter><wait5>,")
define(_26_selected_disk_format_as_raid, "c<enter><wait5>,")
define(_26_selected_disk_format_as_lvm_pv, "d<enter><wait5>,")
define(_26_selected_disk_encrypt, "e<enter><wait5>,")
define(_26_selected_disk_safe_erase, "f<enter><wait5>,")
define(_26_selected_disk_undo, "g<enter><wait5>,")
define(_26_selected_disk_unconfigure, "h<enter><wait5>,")

dnl __ selected disk scheme
define(_27_selected_disk_scheme_gpt, "a<enter><wait5>,")
define(_27_selected_disk_scheme_mbr, "b<enter><wait5>,")
define(_27_selected_disk_scheme_disklabel, "c<enter><wait5>,")

dnl __ TOTEST: cryptographic volume
dnl __ this part is a bit complicated
define(X2_crypto_volume_base_device, "a<enter><wait5>,")
define(X2_crypto_volume_encryption, "b<enter><wait5>,")
define(X2_1_crypto_volume_encryption_aes_xts, "a<enter><wait5>,")
define(X2_1_crypto_volume_encryption_aes_cbc, "b<enter><wait5>,")
define(X2_1_crypto_volume_encryption_aes_3des, "c<enter><wait5>,")
define(X2_1_crypto_volume_encryption_aes_blowfish, "d<enter><wait5>,")
define(X2_crypto_volume_encryption_key_size, "c<enter><wait5>,")
define(X2_crypto_volume_encryption_iv_algo, "d<enter><wait5>,")
define(X2_crypto_volume_encryption_key_generation, "e<enter><wait5>,")
define(X2_crypto_volume_encryption_verification_method, "f<enter><wait5>,")
define(X2_crypto_volume_encryption_remove, "g<enter><wait5>,")
define(X2_crypto_volume_encryption_done, "x<enter><wait5>,")

dnl __ TODO: virtual disk image
dnl __ need to be created

dnl __ TODO: volume group
dnl __ disks must be formatted with PV first

dnl __ TODO: software raid
dnl __ add multiple disk in raid

dnl __ TOTEST: utility menu
dnl __ this menu is used after an installation
define(X1_utility_run_sh, "a<enter><wait5>,")
define(X1_utility_set_timezone, "b<enter><wait5>,")
define(X1_utility_configure_network, "c<enter><wait5>,")
define(X1_utility_partition_disk, "d<enter><wait5>,")
define(X1_utility_logging_functions, "e<enter><wait5>,")
define(X1_utility_color_scheme, "f<enter><wait5>,")
define(X1_utility_halt_system, "g<enter><wait5>,")
define(X1_utility_exit, "x<enter><wait5>,")
