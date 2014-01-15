#!/usr/bin/perl

# Chapter 4 Exercise 3
# Write a subroutine called above_average which takes a list of numbers
# and returns the ones which are above the average (mean)

use warnings;
use utf8;

sub average {
	my ($sum, $average);
	foreach my $num (@_) {
		$sum += $num;
	}

	if (scalar @_ > 1) {
		$average = $sum / (scalar @_);
	} else {
		# if we do not have args, just return 0
		$average = 0;
	}

	return $average;
}

sub above_average {
	my @list = ();
	my $average = average(@_);
	foreach my $num (@_) {
		push @list, $num if ($num > $average);
	}
	return @list;
}


my @fred = above_average(1...10);
print "\@fred is @fred\n";
print "(Should be 6 7 8 9 10)\n";
my @barney = above_average(100, 1..10);
print "\@barney is @barney\n";
print "(Should be just 100)\n";

