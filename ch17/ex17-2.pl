#!/usr/bin/env perl
# Write a program that creates a report of the access and modification
# times (in epoch time) of the files in the current directory. Use stat
# to get the times, using a list slice to extract the elements.
# Report the results in three columns.

use strict;
use warnings;

use File::Spec();
use Cwd();

my $current_dir = Cwd::getcwd();

opendir my $dir_handle, $current_dir or die "Could not read current dir: $!";
while ( my $file = readdir $dir_handle ) {
    next if $file =~ /^\./;
    my $full_path = File::Spec->catfile($current_dir, $file);
    
    # do work here
    my @info = (stat($full_path))[8, 9];
    printf "%-40s %-20s %-20s\n", $file, $info[0], $info[1];
}
closedir $dir_handle;

__END__

