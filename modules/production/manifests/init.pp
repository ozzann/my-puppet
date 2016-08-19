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
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDXseoCpfLM/TnHgRqJgtTQftsfR07yybHh0KGJ3BgiyTPOmyEiDt8wHaufHti8dK7HRvD0B7Prpt/L+8G9yIl2uRzis9AbPb8tDh0k1sZu73hxQjmu0ihnL2LtX6XXzfOq8V0ffyrpmPhsud4QuHQzgJSUecFZzGNbYmEKscPQ+RzkAgr+PmtQuQQIPUHueOZO/4AChy1JwNDy8heaOitAAKCwTc99R+VO3d9FsV3+lvumIMNBHAdNtjl4H+BEZ9TGbHgabU3/hElqSPa6cr1n9gM9bUJ95jaVCPutgCimD6ZCTwf9xlLU4O5XirnsGOsJcm27KCVtDSnO9HvTs4lX',
   }
}
