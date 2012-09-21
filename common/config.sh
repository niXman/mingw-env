#!/bin/bash

#
# The BSD 3-Clause License. http://www.opensource.org/licenses/BSD-3-Clause
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

# you`r prefered version
DEFAULT_MINGW_VERSION=mingw-4.6.2

# extension for package rule
RULES_EXT=mpkg

# extension for package metadata
METADATA_EXT=meta

# create archives for packages?
CREATE_ARCHIVES=yes

# archive type may be one of: tar.gz|tgz|tar.bz2|tbz|tar.lzma|tar.xz|7z|zip
ARCHIVE_TYPE=tar.xz

# you want to use the you`r host compiler instead of building?
USE_HOST_COMPILER=no

# dump all commands for debug mode?
DUMP_COMMANDS=yes

# show all steps for packages?
SHOW_ALL_STEPS=yes

# parallel make jobs count
BUILD_JOBS=3

# common link flags for configure
#LINK_TYPE="--disable-static --enable-shared"
LINK_TYPE="--enable-static --disable-shared"

if [[ $IS_WINDOWS_HOST == yes ]]; then
	source common/config-win
elif [[ $IS_LINUX_HOST == yes ]]; then
	source common/config-nix
elif [[ $IS_MACOSX_HOST == yes ]]; then
	source common/config-osx
else
	echo "bad OS name \"$OSTYPE\". terminate."
	exit 1
fi

# **************************************************************************

SHOW_LOG_ON_DOWNLOAD_ERROR=yes
SHOW_LOG_ON_UNPACK_ERROR=yes
SHOW_LOG_ON_PATCH_ERROR=yes
SHOW_LOG_ON_EXEC_ERROR=yes
SHOW_LOG_ON_CONFIGURE_ERROR=yes
SHOW_LOG_ON_MAKE_ERROR=yes
SHOW_LOG_ON_INSTALL_ERROR=yes
SHOW_LOG_ON_CLEAN_ERROR=yes
SHOW_LOG_ON_COMPRESS_ERROR=yes

# **************************************************************************
# **************************************************************************
# **************************************************************************
