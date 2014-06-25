#!/usr/bin/env bash

# Copyright (c) 2011-2014 Benjamin Fleischer
# All rights reserved.
#
# Redistribution  and  use  in  source  and  binary  forms,  with   or   without
# modification, are permitted provided that the following conditions are met:
#
# 1. Redistributions of source code must retain the above copyright notice, this
#    list of conditions and the following disclaimer.
# 2. Redistributions in binary form must reproduce the above  copyright  notice,
#    this list of conditions and the following disclaimer in  the  documentation
#    and/or other materials provided with the distribution.
# 3. Neither the name of osxfuse nor the names of its contributors may  be  used
#    to endorse or promote products derived from this software without  specific
#    prior written permission.
#
# THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND  CONTRIBUTORS  "AS  IS"
# AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING,  BUT  NOT  LIMITED  TO,  THE
# IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS  FOR  A  PARTICULAR  PURPOSE
# ARE DISCLAIMED.  IN NO EVENT SHALL THE  COPYRIGHT  OWNER  OR  CONTRIBUTORS  BE
# LIABLE  FOR  ANY  DIRECT,  INDIRECT,  INCIDENTAL,   SPECIAL,   EXEMPLARY,   OR
# CONSEQUENTIAL  DAMAGES  (INCLUDING,  BUT  NOT  LIMITED  TO,   PROCUREMENT   OF
# SUBSTITUTE GOODS OR SERVICES; LOSS OF  USE,  DATA,  OR  PROFITS;  OR  BUSINESS
# INTERRUPTION) HOWEVER CAUSED AND  ON  ANY  THEORY  OF  LIABILITY,  WHETHER  IN
# CONTRACT, STRICT  LIABILITY,  OR  TORT  (INCLUDING  NEGLIGENCE  OR  OTHERWISE)
# ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN  IF  ADVISED  OF  THE
# POSSIBILITY OF SUCH DAMAGE.


# Build tool defaults

declare -r  BT_SOURCE_DIRECTORY="$(bt_path_absolute "${0%/*}")"
declare -r  BT_BUILD_DIRECTORY="/tmp/osxfuse"

declare -ri BT_DEFAULT_LOG_VERBOSITY=2


# Xcode defaults

declare -ra BT_SDK_10_5_ARCHITECURES=("ppc" "ppc64" "i386" "x86_64")
declare -r  BT_SDK_10_5_COMPILER="4.2"

declare -ra BT_SDK_10_6_ARCHITECURES=("i386" "x86_64")
declare -r  BT_SDK_10_6_COMPILER="4.2"

declare -ra BT_SDK_10_7_ARCHITECURES=("i386" "x86_64")
declare -r  BT_SDK_10_7_COMPILER="com.apple.compilers.llvmgcc42"

declare -ra BT_SDK_10_8_ARCHITECURES=("i386" "x86_64")
declare -r  BT_SDK_10_8_COMPILER="com.apple.compilers.llvm.clang.1_0"

declare -ra BT_SDK_10_9_ARCHITECURES=("i386" "x86_64")
declare -r  BT_SDK_10_9_COMPILER="com.apple.compilers.llvm.clang.1_0"

declare -ra BT_SDK_10_10_ARCHITECURES=("i386" "x86_64")
declare -r  BT_SDK_10_10_COMPILER="com.apple.compilers.llvm.clang.1_0"

declare -ra BT_SDK_SUPPORTED=("10.5" "10.6" "10.7" "10.8" "10.9" "10.10")

declare -r  BT_DEFAULT_SDK="${BT_OSX_VERSION}"
declare -r  BT_DEFAULT_BUILD_CONFIGURATION="Release"
