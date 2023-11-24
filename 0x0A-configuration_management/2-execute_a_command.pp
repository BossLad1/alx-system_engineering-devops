# Using Puppet, create a manifest that kills a process named killmenow.

exec { 'kill killmenow':
  ensure    => 'pkill -f killmenow',
  provider  => '/usr/bin:/usr/sbin:/bin:/sbin',
  onlyif    => 'pgrep -f killmenow',
}
