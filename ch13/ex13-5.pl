#!/usr/bin/perl

# Chapter 13 Exercise 5
# Make a program that works like mv (don't worry about command line options)
# Remember to allow the destination to be a directory. If it is, use the same
# basename in the new directory.

use strict;
use warnings;
use utf8;

use File::Spec();

my $source = $ARGV[0];
my $target = $ARGV[1];

if ( -w -d $target ) {
    my ($volume, $source_base_dirs, $file ) = File::Spec->splitpath( $source );
    $target = File::Spec->catfile( $target, $file );
}

rename $source, $target;

__END__

