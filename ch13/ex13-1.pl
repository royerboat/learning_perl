#!/usr/bin/perl

# Chapter 13 Exercise 1
# Make a program that asks for a directory name, then change to that directory.
# If the user enters nothing, change to the user's home directory.
# After changing the directory, list the items in the directory (except those
# starting with a dot) in alphabetical order.
# If directory change fails, alert the user and do not show anything. 

use strict;
use warnings;
use utf8;

my $input;

print "Enter in a directory name: ";
chomp($input = <STDIN>);

if ($input =~ /^\s*$/ ) {
    # input is empty, go to the home directory
    chdir or die "could not get your home directory: $!";
    
} else {
    # attempt to change to the directory given
    chdir $input or die "could not change to $input: $!"; 
}

# get an alphabetical directory listing
my @file_listing = glob '*';

# print the files in the directory
foreach my $file ( @file_listing ) {
    print $file . "\n";
}

__END__

