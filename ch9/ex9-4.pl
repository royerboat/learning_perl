#!/usr/bin/env perl

# Chapter 9 Exercise 4
# Write a program to add a copyright line to all of your exercise answers by
# placing the line below immediately after the shebang line. File should be
# edited in place with a backup. The filenames should be passed in.
#
#  > ## Copyright (C) 2014 by Yours Truly

use strict;
use utf8;
use 5.014;

$^I = ".bak";
while(<>) {
    if (m{\#\!/usr/bin/env perl}) {
        print;
        print "## Copyright (C) 2014 by Yours Truly\n";
    } else {
        print;
    }
}

