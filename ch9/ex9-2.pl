#!/usr/bin/env perl
## Copyright (C) 2014 by Yours Truly

# Chapter 9 Exercise 2
# Write a program that makes a modified copy of a text file. In the copy,
# every string Fred (case-insensitive) should be replaced with Larry.
# The input file name should be given as an input to the program.
# The output file name should be the same as the input file name, but ending in
# .out

use strict;
use utf8;
use 5.014;

$^I = ".out";
while(<>) {
    s/fred/Larry/ig;
    print;
}

