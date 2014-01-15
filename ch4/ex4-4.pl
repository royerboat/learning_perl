#!/usr/bin/perl

# Chapter 4 Exercise 4
# Write a subroutine called greet that welcomes the person you name by telling
# them the name of the last person greeted.

use warnings;
use utf8;
use 5.014;

sub greet {
    state @guests;
    my ($name) = shift @_;
    
    if (scalar @guests > 0) {
        print "Hi $name! $guests[-1] is also here!\n";
    } else {
        print "Hi $name! You are the first one here!\n";
    }
    push @guests, $name;
}

greet("Fred");
greet("Barney");

