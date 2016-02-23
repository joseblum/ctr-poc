class jbrepo::config inherits jbrepo {
 
  yumrepo { $repo:
    name     => $repo,
    descr    => $fullname,
    baseurl  => $baseurl,
    enabled  => $enabled,
    gpgcheck => $gpgcheck,
    exclude  => $excludes,
  }
 
}