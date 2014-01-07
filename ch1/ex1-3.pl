#!/usr/bin/perl

# Example 3 

@lines = `perldoc -u -f atan2`;
foreach (@lines) {
	# Replaces <x> with X throughout the string
	s/\w<([^>]+)>/\U$1/g;
	print;
}

