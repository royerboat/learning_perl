#!/usr/bin/perl

# Chapter 6 Exercise 1
# Write a program that asks for a given name and reports the corresponding family name

use strict;
use utf8;

my %given_name = (
    "wilma" => "flinstone",
    "fred" => "flinstone",
    "barney" => "rubble",
    "betty" => "rubble",
);
print "Enter the first name of a flinstone character: ";
chomp(my $entry = <STDIN>);
if (exists $given_name{$entry}) {
    print "We found: $entry $given_name{$entry}\n";
} else {
    print "Sorry, $entry does not exist in our system\n";
}
