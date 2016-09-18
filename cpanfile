requires 'Moose', 0;
requires 'DateTime', 0;
requires 'Carp', 0;
requires 'POSIX', 0;
requires 'Scalar::Util', 0;
requires 'Tie::Hash::LRU', 0;
requires 'Time::Local', 0;
requires 'Time::Piece', 0;
requires 'Try::Tiny', 0;
requires 'Time::Duration::Concise::Localize', '>= 2.5';

on 'test' => sub {
    'Test::More'       => 0,
    'Test::NoWarnings' => 0,
    'Test::Exception'  => 0,
    'Test::MockTime'   => 0,
    'Test::Most'       => 0,
    'Test::Perl::Critic' => 0,
};
