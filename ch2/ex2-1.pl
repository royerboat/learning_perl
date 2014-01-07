#!/usr/bin/perl

# Chapter 2 Example 1
# Calculate the circumference of a cirlce with a radius of 12.5

use warnings;
use utf8;
# Import constants pi2, pip2, pip4 (2*pi, pi/2, pi/4).
use Math::Trig ':pi';

$radius = 12.5;

$circumference = 2 * pi * $radius;

print "$circumference\n";

