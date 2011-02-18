#!perl -T

use Math::BigInt;
use Test::More;

if ( ( not ( ( $Config{use64bitint} || '' ) eq 'define') ) or
     ( not ( $Config{longsize} >= 8 )) ) {
    plan( skip_all => "Don't have 64 bit int here" );
} else {
	my $s = unpack "H*", pack "Q>", Math::BigInt->new("18446744073709551360");
	is( $s, "ffffffffffffff00", "pack Q> for -255");
}

done_testing();