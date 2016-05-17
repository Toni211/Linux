class samba::service {
	service { 'ufw':
	  enable => true,
	  ensure => running,
	}

	exec { 'default_deny':
	  command => 'ufw default deny'
	}
	exec { 'ufw_port_139':
	  command => 'ufw allow 139/tcp'
	}
	exec { 'ufw_port_445':
	  command => 'ufw allow 445/tcp'
	}
	exec { 'ufw_port_137':
	  command => 'ufw allow 137/udp'
	}
	exec { 'ufw_port_138':
	  command => 'ufw allow 138/udp'
	}
	file {'/etc/samba-test':
	ensure => 'directory',
	mode => '770',
	owner => 'toni',
	group => 'toni',

}

  include samba::install

}
