#!/usr/bin/perl

# Chapter 7 Exercise 6
# Write a program that prints each line of input that mentions both
# wilma and fred
# Make a small text file that contains the text to process.

use strict;
use utf8;

while(<>) {
    print if (/\bwilma\b.*\bfred\b|\bfred\b.*\bwilma\b/i);
}

