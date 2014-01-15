#!/usr/bin/perl

# Chapter 4 Exercise 5
# Modify the routine from the Exercise 4 to tell each new person the names of all
# the people it has previously greeted

# Example:
# greet("Fred");
# greet("Barney");
# greet("Wilma");
# greet("Betty");
#
# Hi Fred! You are the first one here!
# Hi Barney! I've seen: Fred
# Hi Wilma! I've seen: Fred Barney
# Hi Betty! I've seen: Fred Barney Wilma

use warnings;
use utf8;
use 5.014;

sub greet {
    state @guests;
    my ($name) = shift @_;
    
    if (scalar @guests > 0) {
        print "Hi $name! I've seen: @guests\n";
    } else {
        print "Hi $name! You are the first one here!\n";
    }
    push @guests, $name;
}

greet("Fred");
greet("Barney");
greet("Wilma");
greet("Betty");

