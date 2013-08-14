use 5.006;
use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'Parallel::MPM::Prefork',
    license             => 'perl',
    dist_author         => q{Carsten Gaebler <cgpan@gmx.de>},
    dist_version_from   => 'lib/Parallel/MPM/Prefork.pm',
    build_requires => {
        'Test::More' => 0,
    },
    requires => {
        'perl' => 5.006,
    },
    add_to_cleanup      => [ 'Parallel-MPM-Prefork-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
