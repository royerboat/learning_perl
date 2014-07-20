#!/usr/bin/env perl

# Chapter 16 Exercise 1
# Write a program that changes to some particular directory then executes
# ls -l to get the long format directory listing. 

use strict;
use warnings;

chdir '/' or die "Cannot chdir /: $!";
system '/bin/ls', '-l';

