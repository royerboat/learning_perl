#!/usr/bin/perl

# Chapter 13 Exercise 4
# Make a program that works like rm (don't worry about the rm options).

use strict;
use warnings;
use utf8;

foreach my $arg ( @ARGV ) {
    unlink $arg or warn "Could not remove $arg: $!";
}

__END__

