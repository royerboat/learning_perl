#!/usr/bin/perl

# Chapter 6 Exercise 2
# Write a program that reads a series of words (one word per line) until end-of-input
# (ctrl-d) then prints a summary of how many times each word was seen
# Sort the summary words in code point order in the output

use strict;
use utf8;

my %word_counter = ();
print "Enter a word: ";
chomp(my @words = <STDIN>);

foreach my $word (@words) {
    $word_counter{$word}++;
}

print "\n";
print "Word Count results\n";
print "="x20 . "\n";
foreach my $word (sort keys %word_counter) {
    print "$word $word_counter{$word}\n";
}
