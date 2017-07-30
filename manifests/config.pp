class osx::config () {
    
    Exec {
        path   => '/usr/bin:/usr/sbin:/bin',
    }

    exec { 'Enable_preview_text_selector':
        command => 'defaults write com.apple.finder QLEnableTextSelection -bool true',
    }
}
