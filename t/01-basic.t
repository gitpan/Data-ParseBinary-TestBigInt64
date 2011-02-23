#!perl -T

use Math::BigInt;
use Test::More;

eval { my $x = pack "Q>", 5 };

if ( $@ ) {
    plan( skip_all => "Don't have 64 bit int here" );
} else {
	my $s = unpack "H*", pack "Q>", Math::BigInt->new("18446744073709551360");
	is( $s, "ffffffffffffff00", "pack Q> for -255");
}

done_testing();