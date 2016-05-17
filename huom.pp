class samba::huom {
	file { '/tmp/sambains':
	content => "Tama kayttojarjestelma ei tue sambaa\n"
	}
}
