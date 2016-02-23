class jbrepo::params {
   # These defaults can be overridden by hiera data
   $repo     = 'jbextras'
   $fullname = 'JetBlue Extras'
   $baseurl  = 'ftp://cua44495app524.jetblue.com/pub/repo/el/6/$basearch'
   $enabled  = '1'
   $gpgcheck = '0'
   $excludes = 'jdk*'

}
