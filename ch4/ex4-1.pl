#!/usr/bin/perl

# Chapter 4 Exercise 1
# Write a subroutine called total that returns the total of a list of numbers

use warnings;
use utf8;

sub total {
	my $sum = 0;
	foreach my $num (@_) {
		$sum += $num; 
	}
	return $sum;
}

my @fred = qw{ 1 3 5 7 9 };
print "\@fred is @fred\n";
my $fred_total = total(@fred);
print "The total of \@fred is $fred_total.\n";
print "Enter some number on separate lines: ";
my $user_total = total(<STDIN>);
print "The total of those number is $user_total\n";

