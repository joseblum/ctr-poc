class oddjob::service {
  service { "messagebus":
    ensure => 'running',
    enable => true,
    before => Service["oddjobd"],
  }
  service { "oddjobd":
    ensure => 'running',
    enable => true,
    require => Package["oddjob-mkhomedir"],
  }    
}