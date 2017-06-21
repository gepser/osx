class gettingstarted::brewtools {

    pkglist = [
        'bash-completion',
        'wget',
        'ctags',
        'git',
        'git-flow',
        'reattach-to-user-namespace',
        'the_silver_searcher',
        'tmux',
        'tree',
        'pidof',
        'jq',
        'ctop',
        'go',
        'node',
        'vim',
        'firefox',
        'google-chrome',
        ]

    package { $pkglist:
        ensure   => present,
        provider => brew,
    }

    package { 'openssl':
        ensure   => present,
        provider => brew,
    }

    package { 'buo/cask-upgrade':
        ensure   => present,
        provider => tap,
    }

    package { 'libyaml':
        ensure   => present,
        provider => brew,
        require  => Package['openssl'],
    }

    casklist = [
        'atom',
        'intellij-idea',
        'araxis-merge',
        'virtualbox',
        'vagrant',
        'vagrant-manager',
        'docker',
    ]

    package { $casklist:
        ensure   => present,
        provider => brewcask,
    }
}
