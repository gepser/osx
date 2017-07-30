# OSX

Install everything you need on your laptop, powered by Puppet.

## Principles

- Testeable: I am not sure yet if this can be tested but I will do my best here. My main concern is to virtualize an OSX environment with Vagrant or Docker.
- Idempotent: You can run it as many times you want and the result is still the same.
- Scalable: It should use modules so it can be extended easily.

## Prerrequisites

I will probably automate this steps too but for now let's write them down here.

### Install puppet and librarian

    sudo gem install puppet -v 3.8.4
    sudo gem install librarian-puppet

### Install homebrew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Run it

    make install

### Install dependencies

    make dependencies

### Resources

https://puppet.com/presentations/designing-puppet-rolesprofiles-pattern

http://librarian-puppet.com/

https://gist.github.com/jordigg/be23c98e8adbf37f2d8c

https://forge.puppet.com/thekevjames/homebrew/dependencies
