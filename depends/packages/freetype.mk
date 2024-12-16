package=freetype
$(package)_version=2.13.1
$(package)_download_path=http://downloads.sourceforge.net/$(package)
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=0b109c59914f25b4411a8de2a506fdd18fa8457eb86eca6c7b15c19110a92fa5

define $(package)_set_vars
  $(package)_config_opts=--without-zlib --without-png --disable-static
  $(package)_config_opts_linux=--with-pic
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE)
endef

define $(package)_stage_cmds
  $(MAKE) DESTDIR=$($(package)_staging_dir) install
endef
