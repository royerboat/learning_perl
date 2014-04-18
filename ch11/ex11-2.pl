#!/usr/bin/env perl

# Chapter 11 Exercise 2
# Write a program that uses the DateTime module to compute the interval between
# now and a date you enter at the year month day on the command line.

use strict;
use utf8;
use 5.014;

use DateTime();

my $year = $ARGV[0];
my $month = $ARGV[1];
my $day = $ARGV[2];

my $current_date = DateTime->now( time_zone => 'floating' );
my $entered_date = DateTime->new( {
    year => $year,
    month => $month,
    day => $day,
});

my $duration = $current_date->subtract_datetime($entered_date);
my @units = $duration->in_units( qw/years months days/ );
printf "%d years, %d months, and %d days\n", @units;