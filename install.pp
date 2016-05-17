class samba::install {
	
	package { 'samba':
	ensure => 'latest',
	}
	
	service { 'samba':
	enable => 'true',
	ensure => 'running',
	}
	
	file {'/etc/samba/smb.conf':
	content => template('/etc/puppet/modules/samba/manifests/smb.conf-pohja.erb'),
	owner => 'root',
	group => 'root', 
	notify => service['samba'],
	require => package['samba'],
  }	
}
