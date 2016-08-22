node default {
}

node 'production.vm' {
    include docker
    include production
}

