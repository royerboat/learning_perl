#!/usr/bin/perl

# Chapter 2 Example 3
# Calculate the circumference of a cirlce with a radius entered by the user
# if the value entered is less than zero, the cicumference should be zero

use warnings;
use utf8;
# Import constants pi2, pip2, pip4 (2*pi, pi/2, pi/4).
use Math::Trig ':pi';

print "Enter the radius of the circle: ";
chomp($radius = <STDIN>);

$circumference = 0 if $radius < 0;
$circumference = 2 * pi * $radius if $radius >= 0;

print "The circumference of the circle is $circumference\n";

