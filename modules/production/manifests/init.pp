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
        key  => 'AAAAB3NzaC1yc2EAAAADAQABAAACAQDkuyfYEt2ROOf+kCc1r0f6Fv0Rfp1WyxnBY824r4CA1CvsignwnaLQC86dtZr5slcVchFc9bHdddVPFuYri8tFysxRc6yQo76ha4+4wadpWNU6X6aaxWUReUSXCRiQ9gh2I1CohkvjVehvul+6Qs30Fj7Su00tzbQHqw6ZL5C8DelaVxi8kqvpHMWKB/MtlKtwLhku56ILo9e3DBa22tuWweyVTttkXHAFNszQtg7iLb6cMFs10apCMtQrfjkhEat9G/sQdYIuGVFR33KPv1BSGsj1KQNXv/0fHXXt9QSu4KJ8hHPuqd7OnojbIrTS8a87EsjiFa/ic79xfkOueqouHO0SwTR8DbzA4UuS69qs0dvw/PQSozj6eE0X9vRc8ixHb5u2tOltn7zOI0rKhuFyydEshpQID2WyxncGUHW5TDzwKKj4QFE04DwKOkfMqL1BJ4v/19YUZDYocqoZ7eJZNtUULo4Agh/S/ePAWEBSPc/BPaodd7vRFHdvMurnZBJgA6PDO6N89aHr9r243ZDKmygQ/odmXJ1c8dirdfxDX1ZNcWAwStEX8ifxJOt7RTPr7JGadQUKzfXPTzMF7p9mtwYaL0y4yptB3GU3VNn7XOtq/ZXaoCWR2g2wFm13I+0ildH2vbSFF2mnF+HYcMxRAyg0UYrIGh1t2yN1cidKCQ==',
   }
}
