use strict;
use warnings;
use ExtUtils::MakeMaker;

WriteMakefile(
    NAME                => 'Data::ParseBinary::TestBigInt64',
    AUTHOR              => q{Shmuel Fomberg <semuelf@cpan.org>},
    VERSION_FROM        => 'lib/Data/ParseBinary/TestBigInt64.pm',
    ABSTRACT_FROM       => 'lib/Data/ParseBinary/TestBigInt64.pm',
    ($ExtUtils::MakeMaker::VERSION >= 6.3002
      ? ('LICENSE'=> 'perl')
      : ()),
    PL_FILES            => {},
    PREREQ_PM => {
        'Test::More' => 0,
		'Math::BigInt' => 1.99,
		'Math::BigInt::FastCalc' => 0.25,
    },
    dist                => { COMPRESS => 'gzip -9f', SUFFIX => 'gz', },
    clean               => { FILES => 'Data-ParseBinary-TestBigInt64-*' },
);
