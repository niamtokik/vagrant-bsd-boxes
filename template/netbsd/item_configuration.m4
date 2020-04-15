dnl ------------------------------------------------------------------
dnl -- netbsd item configuration
dnl ------------------------------------------------------------------

ifdef(NETWORK, include(item_network),)
ifdef(TIMEZONE, include(item_timezone),) 
ifdef(ROOT_SHELL, include(item_root_shell),)

_22_configure_item_root_shell

ifdef(SSHD, _22_configure_item_enable_sshd)
ifdef(NTPD, _22_configure_item_enable_ntpd)
ifdef(NTPDATE, _22_configure_item_enable_ntpdate)
ifdef(MDNSD, _22_configure_item_enable_mdnsd)
ifdef(XDM, _22_configure_item_enable_xdm)
ifdef(CGD, _22_configure_item_enable_cgd)
ifdef(LVM, _22_configure_item_enable_lvm)
ifdef(RAIDFRAME, _22_configure_item_enable_raidframe)

_22_configure_item_add_user
_24_add_user_name
_24_add_user_group_wheel_yes
_24_add_user_shell_sh
_24_add_user_password
_24_add_user_password_confirm

