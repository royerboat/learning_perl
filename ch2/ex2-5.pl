#!/usr/bin/perl

# Chapter 2 Example 5
# Prompt for a string and a number and output the string the number of times
# indicated by the number on a separate line

use warnings;
use utf8;

print "Enter in a string: ";
# We are not using chomp here because we need the newline when we output the strings
$string = <STDIN>;

print "Enter in a number: ";
chomp($repeat = <STDIN>);

print $string x $repeat . "\n";
