use strict;
use warnings;
use Module::Build;

my $builder = Module::Build->new(
    module_name         => 'WWW::BashOrg',
    license             => 'perl',
    dist_author         => q|'Zoffix <'zoffix@cpan.org'>|,
    dist_version_from   => 'lib/WWW/BashOrg.pm',
    build_requires => {
        'Test::More' => 0,
    },
    build_recommends => {
        'App::ZofCMS::Test::Plugin' => '0.0104',
    },
    requires => {
        'LWP::UserAgent'           => 5.829,
        'HTML::TokeParser::Simple' => 3.15,
        'HTML::Entities'           => 3.57,
    },
    add_to_cleanup      => [ 'WWW-BashOrg-*' ],
    create_makefile_pl => 'traditional',
);

$builder->create_build_script();
