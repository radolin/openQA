use strict;
use warnings;

[
    Assets => {
        type => 'iso',
        name => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso',
        # Two hours ago
        t_created => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
    },
    Assets => {
        type => 'iso',
        name => 'openSUSE-13.1-DVD-x86_64-Build0091-Media.iso'
    },
    Assets => {
        type => 'iso',
        name => 'openSUSE-13.1-GNOME-Live-i686-Build0091-Media.iso'
    },
    Assets => {
        type => 'iso',
        name => 'openSUSE-Factory-staging_e-x86_64-Build87.5011-Media.iso',
    },
    Assets => {
        type => 'hdd',
        name => 'openSUSE-13.1-x86_64.hda',
    },
    Assets => {
        type => 'repo',
        name => 'testrepo',
    },
    JobGroups => {
        id          => 1001,
        name        => 'opensuse',
        sort_order  => 0,
        description => "## Test description\n\nwith bugref bsc#1234",
    },
    JobGroups => {
        id         => 1002,
        sort_order => 0,
        name       => 'opensuse test'
    },
    Jobs => {
        # job with empty value settings as default
        id       => 80000,
        priority => 50,
        result   => "passed",
        TEST     => 'minimalx',
        state    => "done",
        # Really old
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 36000, 'UTC'),
        # Really long ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 72000, 'UTC'),
        t_created => time2str('%Y-%m-%d %H:%M:%S', time - 72000, 'UTC'),
    },
    Jobs => {
        id       => 99926,
        group_id => 1001,
        priority => 56,
        result   => "incomplete",
        reason   => 'just a test',
        settings => [
            {key => 'DESKTOP',     value => 'minimalx'},
            {key => 'ISO',         value => 'openSUSE-Factory-staging_e-x86_64-Build87.5011-Media.iso'},
            {key => 'ISO_MAXSIZE', value => 737280000},
            {key => 'ISO_1',       value => 'openSUSE-Factory-staging_e-x86_64-Build87.5011-Media.iso'}
        ],
        ARCH       => 'x86_64',
        BUILD      => '87.5011',
        DISTRI     => 'opensuse',
        FLAVOR     => 'staging_e',
        TEST       => 'minimalx',
        VERSION    => 'Factory',
        MACHINE    => '32bit',
        result_dir => '00099926-opensuse-Factory-staging_e-x86_64-Build87.5011-minimalx',
        state      => "done",
        # One hour ago
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        # Two hours ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        jobs_assets => [{asset_id => 4},]

    },
    Jobs => {
        id       => 99927,
        group_id => 1001,
        priority => 45,
        result   => "none",
        state    => "scheduled",
        # Two hours ago
        t_created  => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        t_finished => undef,
        t_started  => undef,
        TEST       => "RAID0",
        ARCH       => 'i586',
        FLAVOR     => 'DVD',
        DISTRI     => 'opensuse',
        MACHINE    => '32bit',
        BUILD      => '0091',
        VERSION    => '13.1',
        settings   => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'INSTALLONLY', value => '1'},
            {key => 'RAIDLEVEL',   value => '0'},
            {key => 'DVD',         value => '1'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'LIVETEST',    value => '1'},
        ]
    },
    Jobs => {
        id       => 99928,
        priority => 46,
        result   => "none",
        state    => "scheduled",
        # Two hours ago
        t_created  => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        t_finished => undef,
        t_started  => undef,
        TEST       => "RAID1",
        FLAVOR     => 'DVD',
        BUILD      => '0091',
        DISTRI     => 'opensuse',
        ARCH       => 'i586',
        VERSION    => '13.1',
        MACHINE    => '32bit',
        settings   => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'INSTALLONLY', value => '1'},
            {key => 'RAIDLEVEL',   value => '1'},
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
        ]
    },
    Jobs => {
        id          => 99937,
        group_id    => 1001,
        priority    => 35,
        result      => "passed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 536400, 'UTC'),    # 149 hours ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 540000, 'UTC'),    # 150 hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200,   'UTC'),    # Two hours ago
        TEST        => "kde",
        jobs_assets => [{asset_id => 1},],
        ARCH        => 'i586',
        VERSION     => '13.1',
        FLAVOR      => 'DVD',
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        MACHINE     => '32bit',
        result_dir  => '00099937-opensuse-13.1-DVD-i586-Build0091-kde',
        settings    => [
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
            {key => 'QEMUCPU',     value => 'qemu32'}]
    },
    Jobs => {
        id       => 99938,
        group_id => 1001,
        priority => 36,
        result   => "failed",
        state    => "done",
        # One hour ago
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        # Two hours ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        # One hours ago
        t_created  => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        TEST       => "doc",
        ARCH       => 'x86_64',
        VERSION    => 'Factory',
        FLAVOR     => 'DVD',
        BUILD      => '0048',
        DISTRI     => 'opensuse',
        MACHINE    => '64bit',
        result_dir => '00099938-opensuse-Factory-DVD-x86_64-Build0048-doc',
        settings   => [
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-Factory-DVD-x86_64-Build0048-Media.iso'},
            {key => 'QEMUCPU',     value => 'qemu64'}]
    },
    Jobs => {
        id       => 99936,
        group_id => 1001,
        priority => 36,
        result   => "softfailed",
        state    => "done",
        # 30 seconds before the next one
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3630, 'UTC'),
        t_started  => time2str('%Y-%m-%d %H:%M:%S', time - 7230, 'UTC'),
        t_created  => time2str('%Y-%m-%d %H:%M:%S', time - 3630, 'UTC'),
        TEST       => "kde",
        ARCH       => 'x86_64',
        VERSION    => 'Factory',
        FLAVOR     => 'DVD',
        BUILD      => '0048',
        DISTRI     => 'opensuse',
        MACHINE    => '64bit-uefi',
        settings   => [
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-Factory-DVD-x86_64-Build0048-Media.iso'},
            {key => 'QEMUCPU',     value => 'qemu64'},
            {key => 'HDD_1',       value => 'openSUSE-13.1-x86_64.hda'},
        ]
    },
    Jobs => {
        id       => 99939,
        group_id => 1001,
        priority => 36,
        result   => "softfailed",
        state    => "done",
        # One hour ago
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        # Two hours ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        # One hour ago
        t_created => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        TEST      => "kde",
        ARCH      => 'x86_64',
        VERSION   => 'Factory',
        FLAVOR    => 'DVD',
        BUILD     => '0048',
        DISTRI    => 'opensuse',
        MACHINE   => '64bit',
        # no result dir, let us assume that this is an old test that has
        # already be pruned
        settings => [
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-Factory-DVD-x86_64-Build0048-Media.iso'},
            {key => 'QEMUCPU',     value => 'qemu64'},
            {key => 'HDD_1',       value => 'openSUSE-13.1-x86_64.hda'},
        ]
    },
    Jobs => {
        id       => 99940,
        group_id => 1001,
        priority => 36,
        result   => "failed",
        state    => "done",
        # One hour ago
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3600, 'UTC'),
        # Two hours ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        # Two hours ago
        t_created  => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        TEST       => "doc",
        ARCH       => 'x86_64',
        VERSION    => 'Factory',
        FLAVOR     => 'DVD',
        BUILD      => '0048@0815',
        DISTRI     => 'opensuse',
        MACHINE    => '64bit',
        result_dir => '00099938-opensuse-Factory-DVD-x86_64-Build0048-doc',
        settings   => [
            {key => 'DVD',         value => '1'},
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-Factory-DVD-x86_64-Build0048-Media.iso'},
            {key => 'QEMUCPU',     value => 'qemu64'}]
    },
    Jobs => {
        id       => 99946,
        group_id => 1001,
        priority => 35,
        result   => "passed",
        state    => "done",
        # Three hour ago
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 10800, 'UTC'),
        # Four hours ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 14400, 'UTC'),
        # Two hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        TEST        => "textmode",
        ARCH        => 'i586',
        FLAVOR      => 'DVD',
        DISTRI      => 'opensuse',
        BUILD       => '0091',
        VERSION     => '13.1',
        MACHINE     => '32bit',
        jobs_assets => [{asset_id => 1}, {asset_id => 5}],
        result_dir  => '00099946-opensuse-13.1-DVD-i586-Build0091-textmode',
        # job module statistics are hard-coded in accordance with t/fixtures/05-job_modules.pl
        passed_module_count     => 28,
        softfailed_module_count => 1,
        failed_module_count     => 1,
        skipped_module_count    => 0,
        settings                => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'DVD',         value => '1'},
            {key => 'VIDEOMODE',   value => 'text'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
            {key => 'DESKTOP',     value => 'textmode'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'HDD_1',       value => 'openSUSE-13.1-x86_64.hda'},
        ]
    },
    Jobs => {
        id          => 99945,
        group_id    => 1001,
        clone_id    => 99946,
        priority    => 35,
        result      => "passed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 14400, 'UTC'),    # Four hour ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 18000, 'UTC'),    # Five hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200,  'UTC'),    # Two hours ago
        TEST        => "textmode",
        FLAVOR      => 'DVD',
        DISTRI      => 'opensuse',
        BUILD       => '0091',
        VERSION     => '13.1',
        MACHINE     => '32bit',
        ARCH        => 'i586',
        jobs_assets => [{asset_id => 1},],
        settings    => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'DVD',         value => '1'},
            {key => 'VIDEOMODE',   value => 'text'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
            {key => 'DESKTOP',     value => 'textmode'},
            {key => 'ISO_MAXSIZE', value => '4700372992'}]
    },
    Jobs => {
        id          => 99944,
        group_id    => 1001,
        clone_id    => 99945,
        priority    => 35,
        result      => "softfailed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 14400, 'UTC'),    # Four hours ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 18000, 'UTC'),    # Five hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200,  'UTC'),    # Two hours ago
        TEST        => "textmode",
        FLAVOR      => 'DVD',
        DISTRI      => 'opensuse',
        BUILD       => '0091',
        VERSION     => '13.1',
        MACHINE     => '32bit',
        ARCH        => 'i586',
        jobs_assets => [{asset_id => 1},],
        settings    => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'DVD',         value => '1'},
            {key => 'VIDEOMODE',   value => 'text'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0091-Media.iso'},
            {key => 'DESKTOP',     value => 'textmode'},
            {key => 'ISO_MAXSIZE', value => '4700372992'}]
    },
    Jobs => {
        id          => 99947,
        group_id    => 1001,
        priority    => 35,
        result      => "passed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 7200,  'UTC'),    # Two hours ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 14300, 'UTC'),    # Three hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 3600,  'UTC'),    # One hour ago
        TEST        => "textmode",
        FLAVOR      => 'DVD',
        DISTRI      => 'opensuse',
        BUILD       => '0092',
        VERSION     => '13.1',
        MACHINE     => '32bit',
        ARCH        => 'i586',
        jobs_assets => [{asset_id => 1},],
        settings    => [
            {key => 'QEMUCPU',     value => 'qemu32'},
            {key => 'DVD',         value => '1'},
            {key => 'VIDEOMODE',   value => 'text'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-i586-Build0092-Media.iso'},
            {key => 'DESKTOP',     value => 'textmode'},
            {key => 'ISO_MAXSIZE', value => '4700372992'}]
    },
    Jobs => {
        id          => 99963,
        group_id    => 1001,
        priority    => 35,
        result      => "none",
        state       => "running",
        t_finished  => undef,
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 600,  'UTC'),    # 10 minutes ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),    # Two hours ago
        TEST        => "kde",
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        FLAVOR      => 'DVD',
        MACHINE     => '64bit',
        VERSION     => '13.1',
        jobs_assets => [{asset_id => 2},],
        ARCH        => 'x86_64',
        settings    => [
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-x86_64-Build0091-Media.iso'},
            {key => 'DVD',         value => '1'}
        ],
        result_dir => '00099963-opensuse-13.1-DVD-x86_64-Build0091-kde',
    },
    Jobs => {
        id          => 99962,
        group_id    => 1001,
        clone_id    => 99963,
        priority    => 35,
        result      => "failed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 10800, 'UTC'),    # Three hour ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 14400, 'UTC'),    # Four hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200,  'UTC'),    # Two hours ago
        TEST        => "kde",
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        FLAVOR      => 'DVD',
        MACHINE     => '64bit',
        VERSION     => '13.1',
        jobs_assets => [{asset_id => 2},],
        ARCH        => 'x86_64',
        result_dir  => '00099962-opensuse-13.1-DVD-x86_64-Build0091-kde',
        settings    => [
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-x86_64-Build0091-Media.iso'},
            {key => 'DVD',         value => '1'},
        ]
    },
    Jobs => {
        id         => 99981,
        group_id   => 1001,
        priority   => 50,
        result     => "skipped",
        state      => "cancelled",
        t_finished => time2str('%Y-%m-%d %H:%M:%S', time - 3000100, 'UTC'),
        t_started  => undef,
        # Two hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        TEST        => "RAID0",
        VERSION     => '13.1',
        ARCH        => 'i686',
        FLAVOR      => 'GNOME-Live',
        MACHINE     => '32bit',
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        jobs_assets => [{asset_id => 3},],
        settings    => [
            {key => 'DESKTOP',     value => 'gnome'},
            {key => 'ISO_MAXSIZE', value => '999999999'},
            {key => 'LIVECD',      value => '1'},
            {key => 'ISO',         value => 'openSUSE-13.1-GNOME-Live-i686-Build0091-Media.iso'},
            {key => 'RAIDLEVEL',   value => '0'},
            {key => 'INSTALLONLY', value => '1'},
            {key => 'GNOME',       value => '1'},
            {key => 'QEMUCPU',     value => 'qemu32'},
        ]
    },
    Jobs => {
        id         => 99961,
        group_id   => 1002,
        priority   => 35,
        result     => "none",
        state      => "running",
        t_finished => undef,
        # 10 minutes ago
        t_started => time2str('%Y-%m-%d %H:%M:%S', time - 600, 'UTC'),
        # Two hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7200, 'UTC'),
        TEST        => "kde",
        ARCH        => 'x86_64',
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        FLAVOR      => 'NET',
        MACHINE     => '64bit',
        VERSION     => '13.1',
        jobs_assets => [{asset_id => 2}, {asset_id => 6},],
        result_dir  => '00099961-opensuse-13.1-DVD-x86_64-Build0091-kde',
        settings    => [
            {key => 'DESKTOP',     value => 'kde'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-x86_64-Build0091-Media.iso'},
            {key => 'DVD',         value => '1'},
        ]
    },
    ## Job 99764 is used to test test module flags (milestone, fatal, etc.)
    Jobs => {
        id          => 99764,
        priority    => 35,
        result      => "passed",
        state       => "done",
        t_finished  => time2str('%Y-%m-%d %H:%M:%S', time - 542400, 'UTC'),    # 149 hours ago
        t_started   => time2str('%Y-%m-%d %H:%M:%S', time - 546000, 'UTC'),    # 150 hours ago
        t_created   => time2str('%Y-%m-%d %H:%M:%S', time - 7800,   'UTC'),    # Two hours ago
        TEST        => "console tests",
        BUILD       => '0091',
        DISTRI      => 'opensuse',
        FLAVOR      => 'DVD',
        MACHINE     => '64bit',
        VERSION     => '13.1',
        jobs_assets => [{asset_id => 2},],
        ARCH        => 'x86_64',
        settings    => [
            {key => 'DESKTOP',     value => 'textmode'},
            {key => 'ISO_MAXSIZE', value => '4700372992'},
            {key => 'ISO',         value => 'openSUSE-13.1-DVD-x86_64-Build0091-Media.iso'},
            {key => 'DVD',         value => '1'}
        ],
        result_dir => '00099764-opensuse-13.1-DVD-x86_64-Build0091-kde',
    },
]
