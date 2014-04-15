#!/usr/bin/env perl

# Chapter 8 Exercise 6
# Make a pattern that prints out any input line ending with whitespace (other
# than just newline). Use a marker character at the end of the output line
# to make the whitespace visible.
 
use strict;
use utf8;
use 5.014;

while(<>) {
    chomp;
    print "|$_|\n" if (/\s\z/);
}

