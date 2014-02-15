#!/usr/bin/perl

# Chapter 6 Exercise 3
# Write a program lists all of the keys and values from ENV. Print the results in
# 2 columns in ASCIIbetical order.

use strict;
use utf8;

# get the length of the largest key
my $length = 0;
foreach my $key (keys %ENV) {
    if ($length < length($key)) {
        $length = length($key);
    }
}

print "\n";
print "Contens of ENV\n";
print "="x80 . "\n";
printf "%${length}s | %${length}s\n", "key", "value";
print "-"x80 . "\n";

# get the length of the largest key
my $length = 0;
foreach my $key (keys %ENV) {
    if ($length < length($key)) {
        $length = length($key);
    }
}

foreach my $key (sort keys %ENV) {
    printf "%${length}s | %${length}s\n", $key, $ENV{$key};
}


