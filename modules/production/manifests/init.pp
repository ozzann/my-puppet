class production {
    user { 'prod' :
        ensure     => present,
        password   => '12scptoprod',
        home       => '/home/prod',
        managehome => true,
    }
    ssh_authorized_key { 'prod_ssh':
        user => 'prod',
        type => 'rsa',
   }
}
