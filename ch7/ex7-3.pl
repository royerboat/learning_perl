#!/usr/bin/perl

# Chapter 7 Exercise 3
# Write a program that prints each line of input ends in a period.
# Make a small text file that contains the text to process.

use strict;
use utf8;

while(<>) {
    print if (/\.$/);
}

