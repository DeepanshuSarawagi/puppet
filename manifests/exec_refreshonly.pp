file { '/tmp/dir':
  ensure => directory,
  notify => Exec['newdir'],
}

exec { 'newdir':
  command     => '`mkdir` -p /tmp/dir',
  refreshonly => true,
  logoutput   => true,
}
