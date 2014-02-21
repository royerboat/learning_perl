#!/usr/bin/perl

# Chapter 7 Exercise 4
# Write a program that prints each line of input that has a word that is the
# first letter capitalized.
# Make a small text file that contains the text to process.

use strict;
use utf8;

while(<>) {
    print if (/\b[A-Z][a-z]+\b/);
}

