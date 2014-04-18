#!/usr/bin/env perl

# Chapter 10 Exercise 1
# Write a program that repeatedly asks the user to guess a secret number from 1 to 100 until the user
# guesses the correct number. Your program should pick the number at random by usin the magical formula
# int(1 + rand 100). When the user guesses wrong, the program should respons "too low" or "too high". If
# the user enters quit or exit or a blank line, the program should quit. If the user guesses, correctly
# the program should exit too, but should print a success message.

use strict;
use utf8;
use 5.014;

my @guesses;
my $guess;
my $secret_number = int(1 + rand 100);

print "Welcome to the Number Guessing Game!" . "\n";
while(1) {
    print "---------------------------------------------------" . "\n";
    print "Your current guesses are @guesses" . "\n" if @guesses.length > 0;
    print "Enter in a number between 1 and 100: ";
    chomp($guess = <STDIN>);
    push(@guesses, $guess);
    last if $guess =~ /quit|exit|\A\z/i;
    if ($guess =~ /\d/){
        if ($guess > $secret_number) {
            print "\n" . "too high" . "\n";
        } elsif ($guess < $secret_number) {
            print "\n" . "too low" . "\n";
        } else {
            print "\n" . "You guessed correctly! The secret number is $secret_number" . "\n";
            last;
        }
    } else {
        print "Sorry, I didn't understand that. Try again or exit" . "\n";
    }
}

