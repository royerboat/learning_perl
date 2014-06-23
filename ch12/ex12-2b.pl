#!/usr/bin/perl

# Chapter 12 Example 2
# Make a program to identify the oldest file named on the command line and
# report its age in days.
# Test using an empty list.
# This is a remix using map, sort, and grep. Woot!

use strict;
use warnings;
use utf8;

sub find_oldest_file {
    my ( $file_list ) = @_;

    my %file_hash;

    # get the modified times for each file
    my @file_list_times = map {
        $file_hash{$_} = -M; 
    } @$file_list;

    # sort the values numerically and reverse it, so oldest is on top
    my @sorted = reverse sort { $a <=> $b } values %file_hash;

    # find the key for the oldest time 
    my @found_hash_key = grep { $file_hash{$_} == $sorted[0] } keys %file_hash;

    # print out our message
    print "$found_hash_key[0] is the oldest file with an age of $sorted[0] days \n";
    return; 
}

find_oldest_file(\@ARGV); 

__END__

