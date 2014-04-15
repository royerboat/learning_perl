#!/usr/bin/env perl

# Chapter 8 Exercise 5
# Make a pattern that matches if any word (\w) ends with the letter 'a' and
# also have it capture up to 5 characters (if there are any) in a separate
# named capture. Output both captures.
# Test it against:
# wilma
# I saw Wilma yesterday
# I, Wilma!
 
#use strict;
use utf8;
use 5.014;

while(<>) {
    chomp;
    if (/(?<word>\w*a\b)(?<rest>.{0,5})/) {
        print "Matched: |$`<$&>$'|\n";
        print "'word' contains '$+{word}'\n";
	print "'rest' contains '$+{rest}'\n";
    } else {
        print "No match: |$_|\n";
    }
}

