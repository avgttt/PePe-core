package=fontconfig
$(package)_version=2.12.3
$(package)_download_path=http://www.freedesktop.org/software/fontconfig/release/
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=ffc3cbf6dd9fcd516ee42f48306a715e66698b238933d6fa7cef02ea8b3b818e
$(package)_dependencies=freetype expat

define $(package)_set_vars
  $(package)_config_opts=--disable-docs --disable-static
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
