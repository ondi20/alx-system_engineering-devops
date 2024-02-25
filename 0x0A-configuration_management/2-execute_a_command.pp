# Executes a command
exec { 'pkill killmenow':
	path => '/usr/bim:/usr/sbin:/bin'
}

