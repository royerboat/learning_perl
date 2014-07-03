#!/usr/bin/env perl

# Chapter 14 Exercise 2
# Write a program to print the following hash's data sorted in case-insensitive alphabetical
# order by last name. When the last names are the same, sort those by first name (case-insenstive).
# All people with the same family name should be grouped together.
#
# my %last_name = qw{
# fred flinstone Wilma Flinstone Barney Rubble
# betty rubble Bamm-Bamm Rubble PEBBLES FLINSTONE
# };


use strict;
use warnings;

my %last_name = qw{
    fred flinstone Wilma Flinstone Barney Rubble
    betty rubble Bamm-Bamm Rubble PEBBLES FLINSTONE
};

my @family = sort {
    "\L$last_name{$a}" cmp "\L$last_name{$b}" or # sort family name as lowercase strings
    "\L$a" cmp "\L$b" # sort given name as lowercases strings
} keys %last_name;

# print out the original values from the family_name hash
foreach my $family_member (@family) {
    print "$family_member $last_name{$family_member}\n";
}

__END__
