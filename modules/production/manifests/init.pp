clas production{
    vcsrepo { '/home/vagrant/app':
        ensure   => present,
        provider => git,
        source   => 'http://github.com/ozzann/basic-ping-server',
    }
}
