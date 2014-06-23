#!/usr/bin/perl

# Chapter 12 Example 1
# Make a program that takes a list of files and reports whether each file is
# readable, writeable, executable, or doesn't exist.
# Test with a file that is chmod to 0. It reported only that the file exists.

use strict;
use warnings;
use utf8;

sub run_file_tests {
    my ($filename) = @_;
    if (-e $filename) {
        print "$filename exists";
        print ", is readable" if -r _;
        print ", is writable" if -w _;
        print ", is executable" if -x _;
    } else {
        print "$filename does not exist.";
    }

    print "\n";
    return;
}

foreach my $file (@ARGV) {
    run_file_tests($file); 
}

__END__

