#!/usr/bin/perl

# Chapter 12 Example 2
# Make a program to identify the oldest file named on the command line and
# report its age in days.
# Test using an empty list.

use strict;
use warnings;
use utf8;

sub find_oldest_file {
    my ( $file_list ) = @_;

    my $oldest;
    my $oldest_filename;

    foreach my $file (@$file_list) {
        my $current = -M $file;
        if ($oldest) {
            if ( $current > $oldest ) {
                $oldest = $current; 
                $oldest_filename = $file;
            }
        } else {
            $oldest = $current;
            $oldest_filename = $file;
        }
    }

    if ( defined $oldest ) {
        print "$oldest_filename is the oldest file at $oldest days\n";
    } else {
        print "No files were tested\n";
    }

    print "\n";
    return;
}

find_oldest_file(\@ARGV); 

__END__

