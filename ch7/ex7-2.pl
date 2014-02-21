#!/usr/bin/perl

# Chapter 7 Exercise 2
# Write a program that prints each line of input that mentions fred, including Fred.
# Make a small text file that contains the text to process.

use strict;
use utf8;

while(<>) {
    print  if (/fred/i);
}

