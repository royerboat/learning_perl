#!/usr/bin/env perl

# Chapter 15 exercise 2
# Write a program using given-when that takes a number as its input and does the following:
# if divisible by 3, print "Fizz"
# if divisible by 5, print "Bin"
# if divisible by 7, print "Sausage"
#
# Example: 15 should print "Fizz" and "Bin"
#
# What is the first number that prints "Fizz Bin Sausage"? 105

use strict;
use warnings;
use 5.014;

print "Enter a number: ";
chomp(my $guess = <STDIN>);
given ( $guess ) {
    when ( $_ =~ /\d/ && $_ % 3 == 0 ) { print "Fizz\n"; continue; }
    when ( $_ =~ /\d/ && $_ % 5 == 0 ) { print "Buzz\n"; continue; }
    when ( $_ =~ /\d/ && $_ % 7 == 0 ) { print "Sausage\n"; }
}