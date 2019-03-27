file { '/tmp/hello.txt':
  ensure => file,
  content => "hello, Deepanshu\n",
}
