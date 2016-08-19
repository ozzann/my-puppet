class production {
    vcsrepo{'/home/vagrant/app':
       ensure   => present,
       provider => git,
       source   => 'http://github.com/ozzann/basic-ping-server',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode => 0755,
    }

    exec {'docker run -d -p 9000:9000 app':
        onlyif => 'docker build -t app .',
        cwd    => '/home/vagrant/app',
        path   => '/var/run/docker:/var/lib/docker:/usr/bin',
        timeout => 700,
    }
}
