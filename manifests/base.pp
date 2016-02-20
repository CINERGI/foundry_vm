include stdlib
#include apache
# example42 apt 
include apt


class { 'java':
  distribution => 'jdk',
  version => 'latest',
}

class {'::mongodb::server':
  port    => 27017,
  verbose => true,
}


mongodb::db { 'testdb':
  user          => 'user1',
  password_hash => 'a15fbfca5e3a758be80ceaf42458bcd8',
}

# example42 activemq
class { 'activemq': }