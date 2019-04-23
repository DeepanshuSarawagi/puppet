file { '/tmp/dir':
  ensure => directory,
  notify => Exec['newdir'],
}

exec { 'newdir':
  cwd         => '/tmp/',
  command     => '/bin/mkdir dir/',
  refreshonly => true,
  logoutput   => true,
}
