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
RULE_TYPE=metapackage

# name of the package
RULE_NAME=$(basename $BASH_SOURCE .sh)

# list of requirements separated by space
DEPENDENCIES=(
   binutils-2.22.51
   gcc-4.6.1
   gdb-7.3.1
   make-3.82
)

# description of the library
DESCRIPTION="GCC port for Windows. GCC version 4.6.1."

# final commands which will be executed
FINAL_COMMANDS=(
)

# create archive from installed files
PACK_IN_ARCHIVE=yes

# list of excluded patterns separated by ";"
EXCLUDED_FROM_ARCHIVE=

# name of the created archive
ARCHIVE_NAME=$RULE_NAME

# *****************************************************************************
