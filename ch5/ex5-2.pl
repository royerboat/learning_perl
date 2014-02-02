#!/usr/bin/perl

# Chapter 5 Exercise 2
# Write a program that asks the user to enter a list of strings on separate lines,
# printing each string in a right-justified, 20-character column. Also, print a ruler
# line of digits as well for debugging.
# Example:
# 012345678901234567890123456789012345678901234567890123456789
#                hello
#             good-bye

use warnings;
use utf8;

# print out the debugging aid

print "Enter a few strings on separate lines (Use Ctrl-D to stop): \n";
my @strings = (<STDIN>);

# debugging aid
print "0123456789" x 6 . "\n";
my $format = ("%21s" x @strings);
printf $format, @strings;
