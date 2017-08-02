class osx::extras () {
    
    Exec {
        path   => '/usr/bin:/usr/sbin:/bin',
    }

    exec { 'oh-my-zsh':
        command => 'sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"',
    }

    casklist = [
        'spotify',
        '1password',
        'spectacle',
        'google-drive',
        'adobe-creative-cloud',
    ]

    package { $casklist:
        ensure   => present,
        provider => brewcask,
    }
}
