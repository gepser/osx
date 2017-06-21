class packages {
  package { "hh":
    ensure   => present,
    provider => brew,
  }

  file {'/Users/gps/work/src/github.com/gepser/osx/test.txt':
    content => "Hello world",
  }
}