#!/usr/bin/env perl

# Chapter 14 Exercise 3
# Write a program to look through a given string for every occurrence of a given substring
# and print out the positions where a substring is found.
#
# Test Strings
# "This is a test" substring is "is" => 2, 5
# "This is a test" substring is "a" => 8
# "This is a test" substring is "t" => 10, 13
#

use strict;
use warnings;

my $given_string = $ARGV[0];
my $substring = $ARGV[1];

sub report_string_positions {
    my ($given_string, $substring) = @_;

    my @positions;
    my $index = -1;

    while ( 1 ) {
        $index = index($given_string, $substring, $index + 1);
        last if ($index == -1);
        push @positions, $index;
    }

    return @positions;
}

my @results = report_string_positions($given_string, $substring);

print "@results\n";

__END__