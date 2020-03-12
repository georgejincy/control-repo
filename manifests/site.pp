node default {
} 
node 'puppet-test00' {
  include role::master_server
  file {'/root/README':
    ensure => present,
    content => "Welcome to ${fqdn}\n",
  }
}
node /^web/ {
  include role::app_server
}
node /^db/ {
  include role::db_server
}
