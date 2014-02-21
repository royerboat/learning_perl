#!/usr/bin/perl

# Chapter 7 Exercise 5
# Write a program that prints each line of input that has 2 of the same
# nonwhitespace characters next to each other.
# Make a small text file that contains the text to process.

use strict;
use utf8;

while(<>) {
    print if (/(\P{Space})\1/);
}

