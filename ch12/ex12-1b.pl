#!/usr/bin/perl

# Chapter 12 Example 1
# Make a program that takes a list of files and reports whether each file is
# readable, writeable, executable, or doesn't exist.
# Test with a file that is chmod to 0. It reported only that the file exists.
# Remix of this example using map. From what I understand, it is not recommended
# to use map in a void context.

use strict;
use warnings;
use utf8;

map {

    if (-e $_) {
        print "$_ exists";
        print ", is readable" if -r _;
        print ", is writable" if -w _;
        print ", is executable" if -x _;
    } else {
        print "$_ does not exist.";
    }

    print "\n";

} @ARGV;

__END__

