#!/usr/bin/perl

# Chapter 13 Exercise 8
# Make a program that lists the symbolic links in the current directory
# and prints what they point to.

use strict;
use warnings;
use utf8;

use File::Spec();
use Cwd();

my $current_dir = Cwd::getcwd();

opendir my $dir_handle, $current_dir or die "could not read current dir: $!";
while ( my $file = readdir $dir_handle ) {
    next if $file =~ /^\./;
    my $full_path = File::Spec->catfile($current_dir, $file);
    if ( -l $full_path ) {
        my $symlink_value = readlink $full_path;
        print "$file -> $symlink_value\n";
    }
}
closedir $dir_handle;

__END__

