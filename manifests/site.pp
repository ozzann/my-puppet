node default {
}

node 'production.puppet.node.vm' {
    include docker
    include production
}

