#!/usr/bin/env perl

# Chapter 15 exercise 5
# Write a program using given and smart matching that reports all the divisors,
# except 1 and the number itself, of a number you specify on the command line.
# Example:
# 99 should report that it is divisble by 3,9,11,33.
# If the number is prime, report that it is prime instead.
# If the number is odd, report that it is odd.
# If the number is even, report that it is even.
# If the number is divisible by my favorite number, report that too.
# If it is not a number, report the error and don't try to compute the divisors.
# Use only smart matching.
#
# Let's be honest. The first time I solved this problem I did not use much of
# the smart matching. I had to look at the answer in the back to see how they
# were able to use only smart matching. Guess I'm still getting used to this
# new operator. Yep, this paragraph was copied and pasted too, but it was still
# valid for this exercise as well. :-)

use strict;
use warnings;
use 5.014;

## from the book
sub divisors {
    my $number = shift;

    my @divisors = ();
    foreach my $divisor ( 2 .. ($number/2) ) {
        push @divisors, $divisor unless $number % $divisor;
    }

    return @divisors;
}

my $FAVORITE_NUMBER = 42;

given ( $ARGV[0] ) {
    when ( ! /\A\d+\Z/ ) { say "Not a number."; }

    when ( $_ % 2 == 0 ) { say "$_ is an even number"; continue; }
    when ( $_ % 2 != 0 ) { say "$_ is an odd number"; continue; }
    when ( $_ % $FAVORITE_NUMBER == 0 ) {
        say "$_ is divisible by my favorite number ($FAVORITE_NUMBER)";
        continue;
    }

    my @divisors = divisors($_);

    my @empty;
    when ( @divisors ~~ @empty ) {
        # interesting use of ~~ here
        # basically, if @divisors is empty then it should be a prime
        say "$_ is a prime number.";
    }

    default { say "$_ has the following divisors: @divisors"; }

}
