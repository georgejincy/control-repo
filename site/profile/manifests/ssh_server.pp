class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDABuS2nPhKI5NC5z0CpaDNfT4DPETPsZ8MaaeJtsl7Uu5CGZ91gaMRu9iahMwT7sQkyRJwRZt8SjaKoOf1jNbo+bk1GNRBwVlytt1Amcox7+HdouLF3IjY9OTMhp0uvqAkfTPNmDzpPukyHFA3XD2pFZOJ8f0CCkiJcLdeeypnGMf01UGF81Yvz0q6/lVQycw4RybY4DhQW2SxEpzzvGU59irIqZ+IG6lOjT7dSGguQiG+rPXNWyeEjnoh74fXGXk+lld5A+CO88ku7HqI7Nf+ctQFjKlS5GjhVGd9zywjQr7tEAoe4PH1NHDJrFcA5/azT0D/+gC5PXS7RsBGac2L',
  }  
}
