#!/usr/bin/env perl

# Chapter 10 Exercise 3
# Write a program lists all of the keys and values from ENV. Print the results in
# 2 columns in ASCIIbetical order.
# This time, print (undefined value) for variables without a value.
# We will add some new ENV varialbes to prove it works.

use strict;
use utf8;

# add a key without a value
$ENV{'parsnip'} = undef;

# get the length of the largest key
my $length = 0;
foreach my $key (keys %ENV) {
    if ($length < length($key)) {
        $length = length($key);
    }
}

# print the table header
print "\n";
print "Contens of ENV\n";
print "="x80 . "\n";
printf "%${length}s | %${length}s\n", "key", "value";
print "-"x80 . "\n";

# print the table contents
foreach my $key (sort keys %ENV) {
    my $value = $ENV{$key} // "(undefined value)";
    printf "%${length}s | %${length}s\n", $key, $value;
}


