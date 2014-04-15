#!/usr/bin/env perl

# Chapter 8 Exercise 1
# Regex Test program
# Make a pattern to match the string "match". Test the program with
# the input beforematchafter. Does it show the output in the correct
# order.

use strict;
use utf8;
use 5.014;

while(<>) {
    chomp;
    if (/match/) {
        print "Matched: |$`<$&>$'|\n";
    } else {
        print "No match: |$_|\n";
    }
}

