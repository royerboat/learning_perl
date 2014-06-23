#!/usr/bin/perl

# Chapter 12 Example 3
# Make a program that uses stacked file test operators to list all files that
# are readable, writable, and owned by you.

use strict;
use warnings;
use utf8;

sub read_file_list {
    my ( $file_list ) = @_;

    foreach my $file (@$file_list) {
        if ( -o -w -r $file ) {
            print "$file is readable, writable, and owned by you\n";
        }
    }

    print "\n";
    return;
}

read_file_list(\@ARGV);

__END__

