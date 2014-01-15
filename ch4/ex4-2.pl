#!/usr/bin/perl

# Chapter 4 Exercise 2
# Using the subroutine from Exercise 1 calculate the sum of the numbers
# from 1 to 1000

use warnings;
use utf8;

sub total {
	my $sum = 0;
	foreach my $num (@_) {
		$sum += $num; 
	}
	return $sum;
}

my $user_total = total(1..1000);
print "The total of 1 to 1000 is $user_total\n";

