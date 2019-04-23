file { '/tmp/direct':
  ensure => directory,
  notify => Exec['newdir'],
}

exec { 'newdir':
  cwd         => '/tmp/direct'
  command     => '/bin/touch somefile.txt',
  refreshonly => true,
  logoutput   => true,
}
