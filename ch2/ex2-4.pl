#!/usr/bin/perl

# Chapter 2 Example 4
# Prompt for 2 numbers and output the product of those numbers

use warnings;
use utf8;

print "Enter in a number: ";
chomp($number1 = <STDIN>);

print "Enter in another number: ";
chomp($number2 = <STDIN>);

print "$number1 * $number2 = " . $number1 * $number2 . "\n";
