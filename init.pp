class samba {
	$os = $::operatingsystemrelease ? {

	16.04 => 'samba::huom',
	14.04 => 'samba::service',
	
	}
	
	include $os
}
