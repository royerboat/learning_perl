#!/usr/bin/env perl

# Chapter 9 Exercise 3
# Write a program that makes a modified copy of a text file. In the copy,
# every string Fred (case-insensitive) should be replaced with Wilma and
# every string Wilma should be replaced with Fred.
# The input file name should be given as an input to the program.
# The output file name should be the same as the input file name, but ending in
# .out

# OK, I got stuck on this one, so I consulted the Appendix for some ideas.
# Basically they suggested using a placeholder and a terminal character of some
# sorts to use for replacement later.

use strict;
use utf8;
use 5.014;

$^I = ".out";
while(<>) {
    s/fred/\0/ig;
    s/wilma/Fred/ig;
    s/\0/Wilma/ig;
    print;
}

