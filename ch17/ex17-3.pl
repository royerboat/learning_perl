#!/usr/bin/env perl
# Write a program that creates a report of the access and modification
# times (in epoch time) of the files in the current directory. Use stat
# to get the times, using a list slice to extract the elements.
# Report the times in YYYY-MM-DD format. Use map with localtime to
# turn the epoch times into the date strings you need.
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
    my @better_info = map {
        my ($day, $month, $year) = (localtime $_)[3, 4, 5];
        my $format = sprintf "%4d-%02d-%02d", $year + 1900, $month + 1, $day;
    } @info;

    printf "%-40s %-20s %-20s\n", $file, $better_info[0], $better_info[1];
}
closedir $dir_handle;

__END__

