#!/usr/bin/env perl

# Chapter 16 Exercise 2
# Write a program that changes to some particular directory then executes
# ls -l to get the long format directory listing. 
# This time send the output of the command to a file named ls.out and send
# the error output to ls.err. Put these files in the current directory.
# Had some trouble with this one. Realized that I needed to move the 
# STDOUT and STDERR files above the chdir call.
use strict;
use warnings;

open STDOUT, '>', 'ls.out' or die "Cannot open ls.out: $!";
open STDERR, '>', 'ls.err' or die "Cannot open ls.err: $!";
chdir '/' or die "Cannot chdir /: $!";
exec '/bin/ls', '-l';

