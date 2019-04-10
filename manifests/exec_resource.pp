exec { 'hello text':
  command => '/bin/echo Hello, This is `whoami` > /tmp/hello-vagrant.txt',
  user    => 'vagrant',
  creates => '/tmp/hello-vagrant.txt',
}
