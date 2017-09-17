class osx::brewtools {

    pkglist = [
        'openssl',
        'wget',
        'git',
        'git-flow',
        'tree',
        'jq',
        'ctop',
        'go',
        'node',
        ]

    package { $pkglist:
        ensure   => present,
        provider => brew,
    }

    package { 'buo/cask-upgrade':
        ensure   => present,
        provider => tap,
    }

    casklist = [
        'virtualbox',
        'vagrant',
        'vagrant-manager',
        'docker',
        'iterm2',
        'visual-studio-code',
        'google-chrome',
    ]

    package { $casklist:
        ensure   => present,
        provider => brewcask,
    }
}
