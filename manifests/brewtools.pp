class gettingstarted::brewtools {

    pkglist = [
        'bash-completion',
        'wget',
        'ctags',
        'git',
        'git-flow',
        ]

    package { $pkglist:
        ensure   => present,
        provider => brew,
    }

    package { 'buo/cask-upgrade':
        ensure   => present,
        provider => tap,
    }
}
