use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
    NAME         => 'Dancer2::Plugin::DBIC::Async',
    VERSION_FROM => 'lib/Dancer2/Plugin/DBIC/Async.pm',
    ABSTRACT     => 'Asynchronous DBIx::Class integration for Dancer2',
    AUTHOR       => 'Mohammad Sajid Anwar <mohammad.anwar@yahoo.com>',
    LICENSE      => 'perl',

    MIN_PERL_VERSION => '5.020',

    PREREQ_PM => {
        'Dancer2'            => 0,
        'Dancer2::Plugin'    => 0,
        'DBIx::Class'        => 0,
        'DBIx::Class::Async' => 0,
        'AnyEvent'           => 0,
        'Promises'           => 0,
        'Module::Runtime'    => 0,
    },

    TEST_REQUIRES => {
        'Test::More'   => 0,
        'DBD::SQLite'  => 0,
        'DBI'          => 0,
        'File::Temp'   => 0,
    },

    META_MERGE => {
        'meta-spec' => { version => 2 },
        resources => {
            homepage   => 'https://metacpan.org/release/Dancer2-Plugin-DBIC-Async',
            repository => {
                type => 'git',
                url  => 'https://github.com/manwar/Dancer2-Plugin-DBIC-Async.git',
                web  => 'https://github.com/manwar/Dancer2-Plugin-DBIC-Async',
            },
            bugtracker => {
                web => 'https://github.com/manwar/Dancer2-Plugin-DBIC-Async/issues',
            },
        },
    },

    clean => { FILES => 'Dancer2-Plugin-DBIC-Async-*' },
);
