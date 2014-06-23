#!/usr/bin/perl

# Chapter 12 Example 3
# Make a program that uses stacked file test operators to list all files that
# are readable, writable, and owned by you.
# Remix using map in a void context.

use strict;
use warnings;
use utf8;

sub read_file_list {
    my ( $file_list ) = @_;

    map {
        if ( -o -w -r $_ ) {
            print "$_ is readable, writable, and owned by you\n";
        }
    } @$file_list;

    print "\n";
    return;
}

read_file_list(\@ARGV);

__END__

