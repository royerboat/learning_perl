#!/usr/bin/perl

# Chapter 3 Example 3
# Read a list of strings on separate lines until end of input (Ctrl-D), then
# prints the strings in code-point order

# Since we are using warnings here, values outside the bounds of the array
# will cause a warning to be printed to the screen

use warnings;
use utf8;

print "Enter in some strings:\n";

# Read all input. Ctrl-D will escape this line.
# we do not use chomp here so we can keep the newlines. that way when we print the
# array, the list values will appear on separate lines.
my @strings = <STDIN>;

print "Your inputs after sorting:\n";
print sort @strings;


