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

# command what be run before configure script
RUN_BEFORE_CONFIGURE=(
)

# run configure script
RUN_CONFIGURE=no

# configure path
CONFIGURE_PATH=

# additional configure flags
CONFIGURE_FLAGS=(
   --target=$TARGET
   --prefix=$PREFIX_DIR
)

# makefile name
MAKEFILE_NAME=$SRCS_DIR/$SRC_DIR/win32/Makefile.gcc

# command what be run before "make"
RUN_BEFORE_MAKE=(
   "sed 's|INSTALL = \$(CP)|INSTALL = install|g' -i $MAKEFILE_NAME"
)

# run "make"
RUN_MAKE=yes

# advanced "make" flags
MAKE_FLAGS=(
   "-C $SRCS_DIR/$SRC_DIR"
   "CFLAGS=\"$COMMON_CFLAGS\""
   "LDFLAGS=\"$COMMON_LDFLAGS\""
   "BINARY_PATH=\"$PREFIX_DIR/bin\""
   "INCLUDE_PATH=\"$PREFIX_DIR/include\""
   "LIBRARY_PATH=\"$PREFIX_DIR/lib\""
   all
)

# command what be run before "make install"
RUN_BEFORE_MAKE_INSTALL=(
)

#run "make install"
RUN_MAKE_INSTALL=yes
# advanced "make install" flags
MAKE_INSTALL_FLAGS=(
   "-C $SRCS_DIR/$SRC_DIR"
   "CFLAGS=\"$COMMON_CFLAGS\""
   "LDFLAGS=\"$COMMON_LDFLAGS\""
   "BINARY_PATH=\"$PREFIX_DIR/bin\""
   "INCLUDE_PATH=\"$PREFIX_DIR/include\""
   "LIBRARY_PATH=\"$PREFIX_DIR/lib\""
   install
)

# command what be run after "make install"
RUN_AFTER_MAKE_INSTALL=(
)

#run "make uninstall"
RUN_MAKE_UNINSTALL=yes
# advanced "make uninstall" flags
MAKE_UNINSTALL_FLAGS=(
   "-C $SRCS_DIR/$SRC_DIR"
   "CFLAGS=\"$COMMON_CFLAGS\""
   "LDFLAGS=\"$COMMON_LDFLAGS\""
   "BINARY_PATH=\"$PREFIX_DIR/bin\""
   "INCLUDE_PATH=\"$PREFIX_DIR/include\""
   "LIBRARY_PATH=\"$PREFIX_DIR/lib\""
   uninstall
)

#run "make clean"
RUN_MAKE_CLEAN=yes
# advanced "make clean" flags
MAKE_CLEAN_FLAGS=(
   "-C $SRCS_DIR/$SRC_DIR"
   "CFLAGS=\"$COMMON_CFLAGS\""
   "LDFLAGS=\"$COMMON_LDFLAGS\""
   "BINARY_PATH=\"$PREFIX_DIR/bin\""
   "INCLUDE_PATH=\"$PREFIX_DIR/include\""
   "LIBRARY_PATH=\"$PREFIX_DIR/lib\""
   clean
)

# **************************************************************************
