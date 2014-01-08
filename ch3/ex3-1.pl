#!/usr/bin/perl

# Chapter 3 Example 1
# Read a list of strings on separate lines until end of input (Ctrl-D), then 
# print the list in reverse order

use warnings;
use utf8;

print "Enter in some strings:\n";

# Read all input. Ctrl-D will escape this line.
my @strings = <STDIN>;

print "Your inputs after reversing:\n";
print reverse @strings;

