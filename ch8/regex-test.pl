#!/usr/bin/env perl

# Chapter 8 Exercise 1
# Regex Test program

use strict;
use utf8;
use 5.010;

while(<>) {
    chomp;
    if (/YOUR_PATTERN_GOES_HERE/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}

