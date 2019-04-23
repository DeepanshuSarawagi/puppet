file { '/tmp/direct':
  notify => Exec['newdir'],
}

exec { 'newdir':
  cwd         => '/tmp/'
  command     => '/bin/mkdir direct/',
  refreshonly => true,
  logoutput   => true,
}
