#!/usr/bin/env perl

# Chapter 14 Exercise 1
# Write a program to read in a list of numbers and sort them numerically, printing out
# the resultinglist in a right-justified column.
# Use the following as test data:
# 17 1000 04 1.50 3.14159 -10 1.5 4 2001 90210 666


use strict;
use warnings;

my @sorted_args = sort { $a <=> $b } @ARGV;

foreach my $num (@sorted_args) {
    printf "%20g\n", $num;
}

__END__
