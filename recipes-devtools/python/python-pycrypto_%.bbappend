#
# Copyright (C) 2017 Wind River Systems, Inc.
#
inherit distutils3

# We explicitly call distutils_do_install, since we want it to run, but
# *don't* want the autotools install to run, since this package doesn't
# provide a "make install" target.
do_install() {
       distutils3_do_install
}

