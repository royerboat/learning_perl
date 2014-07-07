#!/usr/bin/env perl

# Chapter 15 exercise 3
# Write a program using for-when that goes through a list of files on the command line
# and reports if each file is readable, writable, or executable.
# No need for smart matching

use strict;
use warnings;
use 5.014;

foreach (@ARGV) {
    when ( ! -e ) { say "$_ does not exist"; }
    when ( -r _ ) { say "$_ is readable"; continue; }
    when ( -w _ ) { say "$_ is writable"; continue; }
    when ( -x _ ) { say "$_ is executable"; continue; }
}