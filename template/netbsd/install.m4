_01_install_in_english
_02_select_keyboard_unchanged
_03_netbsd_install_hard_disk
_04_install_hard_disk_validation_yes

_05_select_disk_first
_06_partition_scheme_gpt
_07_bios_correct_geometry
_08_select_partition_default_size
_10_valid_partition_ok
_11_valid_install_yes

_12_select_bootblock_bios_console

ifelse(INSTALL, full, include(install_full))
ifelse(INSTALL, nox11, include(install_nox11))
ifelse(INSTALL, custom, include(install_custom))
ifelse(INSTALL, minimal, include(install_minimal))