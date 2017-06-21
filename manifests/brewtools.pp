class gettingstarted::brewtools {

    pkglist = [
        'bash-completion',
        'wget',
        'ctags',
        'git',
        'git-flow',
        'openssl',
        'reattach-to-user-namespace',
        'the_silver_searcher',
        'tmux',
        'tree',
        'pidof',
        'jq',
        'ctop',
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
