#!/usr/bin/env perl
## Copyright (C) 2014 by Yours Truly

# Chapter 9 Exercise 1
# Regex Test program
# Make a pattern to match 3 consecutive copies of whatever is in $what.
# If $what contains "fred", we should match "fredfredfred".
# If $what is "fred|barney", we should match "fredfredbarney", "barneyfredfred"
# or "barneybarneybarney", among other variations.

use strict;
use utf8;
use 5.014;

my $what = "fred|barney";
while(<>) {
    chomp;
    if (/($what){3}/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}

