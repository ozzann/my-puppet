class production {
    user { 'prod' :
        ensure   => present,
        password => '12scptoproduction',
        home     => '/home/prod',
    }
    
}
