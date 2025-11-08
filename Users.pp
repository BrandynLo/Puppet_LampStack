group { 'group01':
  ensure => present,
}

group { 'group02':
  ensure => present,
}

user { 'FirstUser':
  ensure => present,
  shell => '/bin/bash',
  password => 'Insert-Hashed-Password',
  groups => 'group01', 
  managehome => true,
}

user { 'SecondUser':
  ensure => present,
  shell => '/bin/bash',
  password => 'Inset-Hashed-Password',
  groups => ['group01','group02'],
  managehome => true,
}

user {'ThirdUserNoGroup':
	ensure => present,
	shell => '/bin/bash',
	password => 'Inset-Hashed-Password',
	managehome => true,
