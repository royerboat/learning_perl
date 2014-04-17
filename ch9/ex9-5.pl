#!/usr/bin/env perl

# Chapter 9 Exercise 5
# Write a program to add a copyright line to all of your exercise answers by
# placing the line below immediately after the shebang line. File should be
# edited in place with a backup. The filenames should be passed in.
#
# This version should not edit the files that already contain the copyright
# line.
#
#  > ## Copyright (C) 2014 by Yours Truly

use strict;
use utf8;
use 5.014;

$^I = ".bak";
my $found_shebang = 0;
my $current_file = $ARGV;
while(<>) {
    # Need to know when we are operating on a new file
    if ($current_file != $ARGV) {
        $found_shebang = 0;
        $current_file = $ARGV;
    }

    if ($found_shebang) {
        # Make sure that we do not already have a copyright
        if (m{^\#\# Copyright}) {
            print;
        } else {
            # no copyright, let's add it
            print "## Copyright (C) 2014 by Yours Truly\n";
            print;
        }
        # don't want to be in this area again for this file
        $found_shebang = 0;
    } else {
        print;
    }

    if (m{\#\!/usr/bin/env perl}) {
        $found_shebang = 1;
    }
}

