
pkg_preinst_${PN}-doc () {
    #!/bin/sh -e
    if [ x"$D" = "x" ]; then
        if [ -f ${mandir}/man1/tftp.1 ]; then
            rm -f ${mandir}/man1/tftp.1
        fi
        if [ -f ${mandir}/man8/tftpd.8 ]; then
            rm -f ${mandir}/man8/tftpd.8
        fi
    fi
}

ALTERNATIVE_${PN}-doc += " tftp.1 tftpd.8"
ALTERNATIVE_LINK_NAME[tftp.1] = "${mandir}/man1/tftp.1"
ALTERNATIVE_LINK_NAME[tftpd.8] = "${mandir}/man8/tftpd.8"

