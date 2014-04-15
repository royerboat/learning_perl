#!/usr/bin/env perl

# Chapter 8 Exercise 3
# Make a pattern that matches if any word (\w) ends with the letter a. This
# time capture the word in $1 and show it in the output.
# Test it against:
# wilma (y)
# barney (n)
# Mrs. Wilma Flinstone (y)
# wilma&fred (y)
# Use the sample file from Chapter 7
 
use strict;
use utf8;
use 5.014;

while(<>) {
    chomp;
    if (/(\w*a\b)/) {
        print "Matched: |$`<$&>$'|\n";
        print "\$1 contains $1\n";
    } else {
        print "No match: |$_|\n";
    }
}

