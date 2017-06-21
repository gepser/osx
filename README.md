# OSX

Install everything you need on your laptop, powered by Puppet.

## Principles

- Testeable: I am not sure yet if this can be tested but I will do my best here. My main concern is to virtulize an OSX environment with Vagrant or Docker.
- Idempotent: You can run it as many times you want and the result is still the same.
- Scalable: It should use modules so it can be extended easily.

## Prerrequisites

I will probably automate this steps too but for now let's write them down here.

### Install puppet

    gem install puppet -v 3.8.4

### Install homebrew

    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

### Run it

    puppet apply manifests/osx.pp

### Install dependencies

    make dependencies
