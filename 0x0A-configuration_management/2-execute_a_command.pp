# Using Puppet, create a manifest that kills a process named killmenow.

exec { 'kill':
  ensure => 'pkill -f killmenow',
  path   => ['/usr/bin', '/usr/sbin']
}
