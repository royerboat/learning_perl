#!/usr/bin/env perl

# Chapter 11 Exercise 1
# Write a program lists all of the modules that come with Perl 5.14
# Use the Module::CoreList module from CPAN

use strict;
use utf8;

use Module::CoreList();

my %modules = %{ $Module::CoreList::version{5.014} };
foreach my $key (sort keys %modules) {
    printf "%s : %s\n", $key, $modules{$key};
}