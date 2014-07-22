#!/usr/bin/env perl
# Write a program that reads a list of strings from a file, one string
# per line, and then lets the user interactively enter patterns that
# may match some of the strings. For each pattern, the program should
# tell how many strings from the file matched, then which ones those
# were. Don't reread the file for each new pattern; keep the strings
# in memory. The filename may be hardcoded in the file. If the pattern
# is invalid, the program should simply report the error and let the
# user continue to try patterns. The program should exit when the user
# enters in a blank line.

use strict;
use warnings;

my $file = "sample_text.txt";
open my $fh, '<', $file or die "Couldn't open file $file: $!";

# load the file into memory
my @file_contents;
while ( <$fh> ) {
    chomp;
    push @file_contents, $_;
}
close $fh;

sub prompt {
    print "=" x 40;
    print "\nEnter a regular expression to search the file: ";
    chomp(my $search_regex = <STDIN>);
    return $search_regex;
}
    
while ( (my $search_regex = prompt()) ne '' ) {
    my @matches;
    eval {
        # search the file contents
        @matches = grep { /$search_regex/ } @file_contents;
    };

    if ($@) {
        print "An error occurred ($@), continuing...";
    } else {
        printf "Found %g matches\n", scalar(@matches);
        
        if (scalar(@matches) > 0) {
            foreach my $match ( @matches ) {
                print $match . "\n";
            }
        }
    }
}

__END__

