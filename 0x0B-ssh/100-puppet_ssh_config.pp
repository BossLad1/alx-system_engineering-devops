#!/usr/bin/bash enc
# Let’s practice using Puppet to make changes to our configuration file.
# puppet script - configure ssh authentication:

file_line { 'Turn off passwd auth':
  path => '/etc/ssh/ssh_config',
  line => 'PasswordAuthentication no',
}

file_line { 'Declare identity file':
  path => '/etc/ssh/ssh_config',
  line => 'IdentityFile ~/.ssh/school',
}

service { 'ssh':
  ensure => running,
  enable => true,
}
