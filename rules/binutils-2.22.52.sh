#!/bin/bash

#
# The BSD 3-Clause License ( http://www.opensource.org/licenses/BSD-3-Clause )
#
# This file is part of mingw-env project.
# Copyright (c) 2011,2012, niXman (i dotty nixman doggy gmail dotty com)
# All rights reserved.
# Project: mingw-env ( http://sourceforge.net/projects/mingw-env/ )
#
# Redistribution and use in source and binary forms, with or without
# modification, are permitted provided that the following conditions are met:
# - Redistributions of source code must retain the above copyright
#     notice, this list of conditions and the following disclaimer.
# - Redistributions in binary form must reproduce the above copyright
#     notice, this list of conditions and the following disclaimer in
#     the documentation and/or other materials provided with the distribution.
# - Neither the name of the 'mingw-env' nor the names of its contributors may
#     be used to endorse or promote products derived from this software
#     without specific prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS
# "AS IS" AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT
# LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR
# A PARTICULAR PURPOSE ARE DISCLAIMED.
# IN NO EVENT SHALL THE COPYRIGHT HOLDER OR CONTRIBUTORS BE LIABLE FOR ANY
# DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES
# (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS
# OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER
# CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
# OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE
# USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
#

# **************************************************************************
# **************************************************************************
# **************************************************************************

# type of the package may be one from (package|metapackage)
RULE_TYPE=package

# name of the package
RULE_NAME=$(basename $BASH_SOURCE .sh)

# sources type: .tar.gz, .tar.bz2 e.t.c...
# if sources get from a repository, choose it`s type: cvs, svn, hg, git
SRC_TYPE=.tar.bz2

# URL for download sources
SRC_URL=ftp://sourceware.org/pub/binutils/snapshots/binutils-2.22.52.tar.bz2

# sources directory name
SRC_DIR=$RULE_NAME

# build directory name
BUILD_DIR=$RULE_NAME

# list of requirements separated by space
DEPENDENCIES=(
   libiconv-1.14
   #zlib-1.2.6
)

# description of the library
DESCRIPTION="The GNU Binutils are a collection of binary tools. Version 2.22.52."

# list of patches separated by space
APPLYING_PATCHES=(
)

# command what be run before configure script
RUN_BEFORE_CONFIGURE=(
)

# run configure script
RUN_CONFIGURE=yes

# configure path
CONFIGURE_PATH=

# additional configure flags
CONFIGURE_FLAGS=(
   CFLAGS=\"$COMMON_CFLAGS\"
   CXXFLAGS=\"$COMMON_CXXFLAGS\"
   CPPFLAGS=\"$COMMON_CPPFLAGS\"
   LDFLAGS=\"$COMMON_LDFLAGS $( [[ "$TARGET" != x86_64* ]] && echo -Wl,--large-address-aware )\"
   # other flags
   --target=$TARGET
   --prefix=$PREFIX_DIR
   --disable-nls
   --enable-static
   --enable-shared
   --with-libiconv-prefix=$PREFIX_DIR
)

# command what be run before "make"
RUN_BEFORE_MAKE=(
)

# makefile name
MAKEFILE_NAME=Makefile

# run "make"
RUN_MAKE=yes

# advanced "make" flags
MAKE_FLAGS=(
   all
)

# command what be run before "make install"
RUN_BEFORE_MAKE_INSTALL=(
)

#run "make install"
RUN_MAKE_INSTALL=yes
# advanced "make install" flags
MAKE_INSTALL_FLAGS=(
   install
)

# command what be run after "make install"
RUN_AFTER_MAKE_INSTALL=(
)

#run "make uninstall"
RUN_MAKE_UNINSTALL=yes
# advanced "make uninstall" flags
MAKE_UNINSTALL_FLAGS=(
   uninstall
)

#run "make clean"
RUN_MAKE_CLEAN=yes
# advanced "make clean" flags
MAKE_CLEAN_FLAGS=(
   clean
)

#run "make clean"
RUN_MAKE_DISTCLEAN=yes
# advanced "make distclean" flags
MAKE_DISTCLEAN_FLAGS=(
   distclean
)

# create archive from installed files
CREATE_ARCHIVE=yes

# list of excluded patterns separated by ";"
EXCLUDED_FROM_ARCHIVE=

# name of the created archive
ARCHIVE_NAME=$RULE_NAME

# *****************************************************************************
