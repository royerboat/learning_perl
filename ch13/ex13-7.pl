#!/usr/bin/perl

# Chapter 13 Exercise 7
# Make a program that works like ln (don't worry about command line options)
# Remember to allow the destination to be a directory. If it is, use the same
# basename in the new directory.
# This time support the -s argument to make a soft link.

use strict;
use warnings;
use utf8;

use File::Spec();

my $option = $ARGV[0];
my $source;
my $target;

if ($option eq '-s') {
    $source = $ARGV[1];
    $target = $ARGV[2];
} else {
    $source = $ARGV[0];
    $target = $ARGV[1];
}

if ( -w -d $target ) {
    my ($volume, $source_base_dirs, $file ) = File::Spec->splitpath( $source );
    $target = File::Spec->catfile( $target, $file );
}

if ($option eq '-s') {
    symlink $source, $target;
} else {
    link $source, $target;
}

__END__

