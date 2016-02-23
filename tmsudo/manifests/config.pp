class tmsudo::config inherits tmsudo {
  
    file { $config:
    owner   => 'root',
    group   => 'root',
    mode    => '0440',
    content => template($config_template), 
 
    }
  
}
