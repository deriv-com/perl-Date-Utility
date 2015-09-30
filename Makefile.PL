use 5.010;
use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME             => 'Date::Utility',
    AUTHOR           => q{Binary.com <support@binary.com>},
    VERSION_FROM     => 'lib/Date/Utility.pm',
    ABSTRACT_FROM    => 'lib/Date/Utility.pm',
    LICENSE          => 'artistic_2',
    PL_FILES         => {},
    MIN_PERL_VERSION => 5.010,
    CONFIGURE_REQUIRES => {
        'ExtUtils::MakeMaker' => 0,
    },
    BUILD_REQUIRES => {
        'Test::More'       => 0,
        'Test::NoWarnings' => 0,
        'Test::Exception'  => 0,
        'Test::MockTime'   => 0,
        'Test::Most'       => 0,
        'Test::Perl::Critic' => 0,
    },
    PREREQ_PM => {
        'Moose'                              => 0,
        'DateTime'                           => 0,
        'Carp'                               => 0,
        'POSIX'                              => 0,
        'Scalar::Util'                       => 0,
        'Tie::Hash::LRU'                     => 0,
        'Time::Local'                        => 0,
        'Time::Piece'                        => 0,
        'Try::Tiny'                          => 0,
        'Time::Duration::Concise::Localize'  => 2.5,
    },
    dist  => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean => { FILES => 'Date-Utility-*' },
    (
        eval { ExtUtils::MakeMaker->VERSION(6.46) }
        ? (
            META_MERGE => {
                'meta-spec' => { version => 2 },
                resources   => {
                    repository => {
                        type => 'git',
                        url => 'https://github.com/binary-com/perl-Date-Utility.git',
                        web => 'https://github.com/binary-com/perl-Date-Utility',
                    },
                }
            }
          )
        : ()
      ),
);
