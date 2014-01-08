#!/usr/bin/perl

# Chapter 3 Example 2
# Read a list of numbers on separate lines until end of input (Ctrl-D), then
# prints the corresponding value (from the provided array) for each number

# Since we are using warnings here, values outside the bounds of the array
# will cause a warning to be printed to the screen

use warnings;
use utf8;

my @names = qw{fred betty barney dino wilma pebbles bamm-bamm};
print "Enter in some numbers (HINT: Use 0-$#names):\n";

# Read all input and chomp it. Ctrl-D will escape this line.
chomp(my @indices = <STDIN>);

print "Your inputs from the array:\n";
foreach $index (@indices) {
	print $names[$index] . "\n";
}


