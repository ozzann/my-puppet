class production {
    vcsrepo{'/home/vagrant/app':
       ensure   => present,
       provider => git,
       source   => 'http://github.com/ozzann/basic-ping-server',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
        require => Vcsrepo["/home/vagrant/app"],
    }

    exec {'./deploy.sh':
        cwd    => '/home/vagrant/app',
        path   => '/home/vagrant/app',
        timeout => 700,
        require => File["/home/vagrant/app/deploy.sh"],
    }
}
