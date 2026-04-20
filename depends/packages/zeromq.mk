package=zeromq
$(package)_version=4.0.10
$(package)_download_path=https://github.com/zeromq/zeromq4-x/releases/download/v4.0.10
$(package)_file_name=$(package)-$($(package)_version).tar.gz
$(package)_sha256_hash=ae08539d9f93561f7f7392841d65074fcde35ac2398f268311b5f4f39dced576

define $(package)_set_vars
  $(package)_config_opts=--without-documentation --disable-shared
  $(package)_config_opts_linux=--with-pic
  $(package)_cxxflags=-std=c++11
endef

define $(package)_config_cmds
  $($(package)_autoconf)
endef

define $(package)_build_cmds
  $(MAKE) -C src
endef

define $(package)_stage_cmds
  $(MAKE) -C src DESTDIR=$($(package)_staging_dir) install
endef

define $(package)_postprocess_cmds
  rm -rf bin share
endef
