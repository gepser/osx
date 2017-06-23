class gettingstarted::brewtools () {

    class { 'homebrew':
        user  => 'ghoil', #we need a parameter for this
        group => 'admin',
    }

    $pkglist = [
        'bash-completion',
        'wget',
        'ctags',
        'git',
        'git-flow',
        'openssl',
        'libyaml',
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

    $taplist = [
        'homebrew/core',
        'buo/cask-upgrade',
        'thoughtbot/formulae',
        'caskroom/versions',
    ]

    $casklist = [
        'qlcolorcode',
        'qlstephen',
        'qlmarkdown',
        'quicklook-json',
        'qlprettypatch',
        'quicklook-csv',
        'betterzipql',
        'qlimagesize',
        'webpquicklook',
        'suspicious-package',
        'atom',
        'intellij-idea',
        'araxis-merge',
        'virtualbox',
        'vagrant',
        'vagrant-manager',
        'docker',
        'hipchat',
        'java',
        'java6',
    ]

    package { $taplist:
        ensure   => present,
        provider => tap,
    }

    package { $pkglist:
        ensure   => present,
        provider => brew,
        require  => Package[$taplist],
    }

    package { $casklist:
        ensure   => present,
        provider => brewcask,
        require  => Package[$pkglist],
    }
}