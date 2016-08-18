class production {
    user { 'prod' :
        ensure     => present,
        password   => '12scptoproduction',
        home       => '/home/prod',
        managehome => true,
    }
    ssh_authorized_key { 'prod_ssh':
        user => 'prod',
        type => 'rsa',
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAABAQDIaYRnJsO2mDJ2mrhiK9lxYVssEqqf5DoiyCTDYoCrEwWwkkybMQMeeDTxvc3ufUGf3XwyssfCQex6hjjU7AI5GFv/YJJNJsh4ZtoVyqkTM+V0HzUEWoHJXQ3ByUz3o48uiuxrDmSYY2+KkHEsvQ9und30wmmfq5qxO08wn1yEyd+aZKJMttHnNVG62mu9Lvxja0NG0zG4S4LFFr4oGQrPqCLADBuuN37Ismc61XDLMAoN3Yii7RNcbNRAhcNBwos+n1ix0QVqMk7jIfp/WLrKDZWLly9i7kARZ/E4HujVXIBpIpGMfH25S+RbXA5EBl5fvrbA9iQad9/1Os8IgUPz',
   }
}
