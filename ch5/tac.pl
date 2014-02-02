#!/usr/bin/perl

# Chapter 5 Exercise 1
# Write a program that act like cat but reverses the order of the output lines
# Example:
# ./tac fred barney betty
# Outputs all of file betty from last line to first, all of file barney from last
# line to first, and all of file fred from last line to first

use warnings;
use utf8;

# reverse the order of the ARGV array
@ARGV = reverse(@ARGV);

foreach my $file (@ARGV) {

    # open the file and read all contents into an array
    open my $content, '<', $file or die "Could not open $file: $!";
    my @reversed_content = <$content>;
    close $content;

    # reverse the array
    @reversed_content = reverse(@reversed_content);
    print @reversed_content;
}
