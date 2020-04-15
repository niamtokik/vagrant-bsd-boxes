dnl ------------------------------------------------------------------
dnl -- netbsd minimal installation
dnl -- this template install automatically a minimal netbsd system
dnl -- based on different media.
dnl ------------------------------------------------------------------

_13_distribution_minimal

dnl -- media selection part
ifelse(MEDIA, cdrom, include(media_cdrom))
ifelse(MEDIA, http, include(media_http))

dnl -- distribution set
_20_distribution_set_yes

dnl -- valid installation
_21_extraction_complete

dnl -- configuration
include(item_configuration)

_23_installation_complete
