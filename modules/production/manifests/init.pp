class production {
    vcsrepo{'/home/vagrant/app':
       ensure   => present,
       provider => git,
       source   => 'http://github.com/ozzann/basic-ping-server',
    }

    file {'/home/vagrant/app/deploy.sh':
        mode    => 0755,
        require => Vcsrepo["/home/vagrant/app"],
    }

    $docker_path="/usr/bin"
    exec {'stop_all_containers':
        command => 'docker stop $(docker ps -q -a)',
        path    => "${docker_path}",
    }
    
    exec {'remove_all_containers':
        command => 'docker rm $(docker ps -q -a)', 
        path    => "${docker_path}",
        require => Exec["stop_all_containers"],
    }

    exec {'build_app_image':
         command => 'docker build -t app .',
         cwd     => '/home/vagrant/app',
         path    => "${docker_path}",
         timeout => 500,
         require => Exec["remove_all_containers"],
    }

    exec {'run_container':
         command => 'docker run -d -p 9000:9000 app',
         path    => "${docker_path}",
         require => Exec["build_app_image"],
    }
}
