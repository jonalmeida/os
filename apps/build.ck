/*++

Copyright (c) 2013 Minoca Corp.

    This file is licensed under the terms of the GNU General Public License
    version 3. Alternative licensing terms are available. Contact
    info@minocacorp.com for details. See the LICENSE file at the root of this
    project for complete licensing information.

Module Name:

    Applications

Abstract:

    This directory contains user mode applications and libraries.

Author:

    Evan Green 25-Feb-2013

Environment:

    User

--*/

function build() {
    test_apps = [
        "//apps/libc/dynamic/testc:build_testc",
        "//apps/testapps:testapps",
    ];

    libc = [
        "//apps/libc/crypt:libcrypt",
        "//apps/libc/dynamic/pthread/static:libpthread_nonshared",
        "//apps/libc/static:libc_nonshared",
    ];

    mingen_build = [
        "//apps/mingen:build_mingen"
    ];

    apps = [
        "//apps/debug:debug",
        "//apps/efiboot:efiboot",
        "//apps/mingen:mingen",
        "//apps/mount:mount",
        "//apps/netcon:netcon",
        "//apps/profile:profile",
        "//apps/setup:msetup",
        "//apps/setup:build_msetup",
        "//apps/swiss:swiss",
        "//apps/swiss:build_swiss",
        "//apps/tzcomp:tz_files",
        "//apps/unmount:umount",
        "//apps/vmstat:vmstat",
    ];

    all_apps = test_apps + libc + mingen_build + apps;
    entries = group("all_apps", all_apps);
    return entries;
}

return build();
