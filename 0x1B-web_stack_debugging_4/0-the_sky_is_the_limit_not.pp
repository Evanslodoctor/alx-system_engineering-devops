# Increase the ULIMIT of the default file
file_line { 'increase_ulimit':
  ensure => present,
  path   => '/etc/default/nginx',
  line   => 'ulimit -n 4096;',
  match  => '^ulimit -n',
} ->

# Restart Nginx
service { 'nginx':
  ensure    => running,
  enable    => true,
  subscribe => File_line['increase_ulimit'],
}
