class production {

    install docker

    exec {'rm -rf /home/vagrant/app/*':
        path => '/usr/bin:/usr/sbin:/bin',
    }

    file { '/home/vagrant/app':
        ensure => 'directory',
        source => 'puppet:///extra_files/app',
        recurse => 'remote',
        path => '/home/vagrant/app',
        owner => 'vagrant',
    }
    
    docker::image { 'mono': 
        require => File["/home/vagrant/app"],
    }

    exec { 'deploy_app':
       cwd     => "/home/vagrant/app",
       logoutput => 'true',
       command => "/bin/bash -c 'chmod +x deploy.sh; ./deploy.sh'",
       require => Docker::Image["mono"],
       timeout => 1000,
    }
}
