
class { 'java':
  distribution => 'jre',
}

class {'::mongodb::client':}


vcsrepo { '/path/to/repo':
  ensure   => present,
  provider => git,
  source   => 'git://example.com/repo.git',
}

