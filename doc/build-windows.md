WINDOWS BUILD NOTES
====================

Some notes on how to build PepeCore for Windows.

Most developers use cross-compilation from Ubuntu to build executables for
Windows. This is also used to build the release binaries.

Building on Windows itself is possible (for example using msys / mingw-w64),
but no one documented the steps to do this. If you are doing this, please contribute them.

Recommend using Ubuntu 18

Cross-compilation
-------------------

These steps can be performed on, for example, an Ubuntu VM. The depends system
will also work on other Linux distributions, however the commands for
installing the toolchain will be different.

First install the toolchains:

    sudo apt-get install g++-mingw-w64-x86-64 mingw-w64-x86-64-dev

To build executables for Windows 64-bit:

    cd depends
    make HOST=x86_64-w64-mingw32 -j4
    cd ..
    ./configure --prefix=`pwd`/depends/x86_64-w64-mingw32 --disable-shared
    make

Windows32 bit binaries are assumed to not build cleanly, or indeed at all, and are not supported.

For further documentation on the depends system see [README.md](../depends/README.md) in the depends directory.

