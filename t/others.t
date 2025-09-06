# -*- perl -*-

use strict;
use warnings;
use Test::Simple tests => 60;
use Math::Palindrome ':all';


my @a = increasing_sequence(25, 111);
ok(is_palindrome($_)) foreach @a;
my @b = decreasing_sequence(25, 10000);
ok(is_palindrome($_)) foreach @b;
ok(palindrome_after(5) == 5);
ok(palindrome_before(5) == 55);
eval { increasing_sequence('foo', 0) };
ok($@ =~ /non-negative integer/);
eval { increasing_sequence(1, -1) };
ok($@ =~ /non-negative integer/);
eval { decreasing_sequence('foo', 100) };
ok($@ =~ /non-negative integer/);
eval { decreasing_sequence(1, -1) };
ok($@ =~ /non-negative integer/);
eval { palindrome_after('foo') };
ok($@ =~ /non-negative integer/);
eval { palindrome_after(1, -1) };
ok($@ =~ /non-negative integer/);
eval { palindrome_before('foo') };
ok($@ =~ /non-negative integer/);
eval { palindrome_before(1, -1) };
ok($@ =~ /non-negative integer/);
