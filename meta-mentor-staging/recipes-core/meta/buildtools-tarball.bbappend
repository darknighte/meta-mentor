# nativesdk-ca-certificates is needed in order to support oe/yocto builds with
# buildtools-tarball on old hosts, as we provide libcurl, and that needs to be
# able to find the certs, and there's no standard path or bundle path, so we
# can't rely on the host.
TOOLCHAIN_HOST_TASK += "nativesdk-ca-certificates"

# nativesdk-git-perltools is needed for git-submodule, which is needed to
# support bitbake's gitsm:// fetcher
TOOLCHAIN_HOST_TASK += "nativesdk-git-perltools"

# nativesdk-git-perltools pulls in nativesdk-perl, but if the buildtools
# tarball includes perl, that will be used in the autoconf build (as it doesn't
# inherit perlnative), so we also need the perl modules necessary to run autoconf
TOOLCHAIN_HOST_TASK += "\
    nativesdk-perl \
    nativesdk-perl-module-carp \
    nativesdk-perl-module-constant \
    nativesdk-perl-module-errno \
    nativesdk-perl-module-exporter \
    nativesdk-perl-module-file-basename \
    nativesdk-perl-module-file-compare \
    nativesdk-perl-module-file-copy \
    nativesdk-perl-module-file-glob \
    nativesdk-perl-module-file-path \
    nativesdk-perl-module-file-stat \
    nativesdk-perl-module-getopt-long \
    nativesdk-perl-module-io-file \
    nativesdk-perl-module-posix \
"

# identified by the oe-core sanity checker
TOOLCHAIN_HOST_TASK += "\
    nativesdk-perl-module-data-dumper \
    nativesdk-perl-module-text-parsewords \
    nativesdk-perl-module-thread-queue \
"

# glib-mkenums needs these perl modules
TOOLCHAIN_HOST_TASK += "\
    nativesdk-perl-module-safe \
    nativesdk-perl-module-unicore \
"

# syncqt.pl from qtmultimedia needs this
TOOLCHAIN_HOST_TASK += "\
    nativesdk-perl-module-english \
    nativesdk-perl-module-tie-hash-namedcapture \
"

# makevalues.pl in qtwebkit needs this
TOOLCHAIN_HOST_TASK += "\
    nativesdk-perl-module-ipc-open2 \
    nativesdk-perl-module-file-find \
"

# generate-forwarding-headers.pl in qtwebkit needs this
TOOLCHAIN_HOST_TASK += "nativesdk-perl-module-file-spec-functions"
