#!/usr/bin/perl

# Chapter 5 Exercise 3
# Write a program that asks the user to enter a column width and a list of strings on separate lines,
# printing each string in a right-justified column of the specified width. Also, print a ruler
# line of digits as well for debugging.
# Example:
# 012345678901234567890123456789012345678901234567890123456789
#                hello
#             good-bye

use warnings;
use utf8;

# print out the debugging aid

print "Enter the column width followed by a few strings on separate lines (Use Ctrl-D to stop): \n";
my @strings = (<STDIN>);

# debugging aid
my $width = shift(@strings);
chomp($width);
$width += 1;

# adjust the ruler length based on the input width
my $ruler_length = ($width * 1.2) / 10;
print "0123456789" x $ruler_length . "\n";

# output each line of the array with the specified width
my $format = ("%${width}s" x @strings);
printf $format, @strings;
