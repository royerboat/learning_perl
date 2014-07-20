#!/usr/bin/env perl
# Write a program to parse the output of the date command
# to determine the current day of the week.
# If the day is a weekday, print "get to work";
# Otherwise, print "go play";

use strict;
use warnings;

my $date_output = `date`;
if ($date_output =~ /\A(sun|sat)/i) {
    print "go play\n";
} else {
    print "get to work\n";
}

