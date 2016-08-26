class production {
    file {'/home/vagrant/app':
        ensure => absent,
        force  => true,
    }

    vcsrepo{'/home/vagrant/app':
       ensure   => present,
       provider => git,
       source   => 'http://github.com/ozzann/basic-ping-server',
       require  => File["/home/vagrant/app"],
    }

    file {'/home/vagrant/app/deploy.sh':
        mode    => 0755,
        require => Vcsrepo["/home/vagrant/app"],
    }
    
    exec { 'deploy_app':
       command => "/bin/bash -c 'cd /home/vagrant/app; /home/vagrant/app/deploy.sh'",
       require => File["/home/vagrant/app/deploy.sh"],
    }
}
