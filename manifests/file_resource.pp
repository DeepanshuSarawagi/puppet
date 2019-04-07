file { '/tmp/file_resource':
  ensure => present,
  owner => 'root',
  group => 'root',
  content => "This is my first manifest and it is managed by puppet. Please dont edit it/n",
  mode => '0644',
}
