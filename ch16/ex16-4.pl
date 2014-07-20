#!/usr/bin/env perl
# Write a program that loops infinitely and catches signals and reports
# which signal it caught and how many times it was caught.

my %signals;

sub sig_int_handler {
    print "Caught INT signal.\n";
    die "Exiting...\n";
}

sub sig_hup_handler { $signals{'HUP'}++; print "Caught HUP: $signals{'HUP'} times \n"; };
sub sig_quit_handler { $signals{'QUIT'}++; print "Caught QUIT: $signals{'QUIT'} times \n"; };
sub sig_trap_handler { $signals{'TRAP'}++; print "Caught TRAP: $signals{'TRAP'} times \n"; };
sub sig_abrt_handler { $signals{'ABRT'}++; print "Caught ABRT: $signals{'ABRT'} times \n"; };
sub sig_emt_handler { $signals{'EMT'}++; print "Caught EMT: $signals{'EMT'} times \n"; };
sub sig_kill_handler { $signals{'KILL'}++; print "Caught KILL: $signals{'KILL'} times \n"; };
sub sig_sys_handler { $signals{'SYS'}++; print "Caught SYS: $signals{'SYS'} times \n"; };
sub sig_pipe_handler { $signals{'PIPE'}++; print "Caught PIPE: $signals{'PIPE'} times \n"; };
sub sig_alrm_handler { $signals{'ALRM'}++; print "Caught ALRM: $signals{'ALRM'} times \n"; };
$SIG{'INT'} = 'sig_int_handler';
$SIG{'HUP'} = 'sig_hup_handler';
$SIG{'QUIT'} = 'sig_quit_handler';
$SIG{'TRAP'} = 'sig_trap_handler';
$SIG{'ABRT'} = 'sig_abrt_handler';
$SIG{'EMT'} = 'sig_emt_handler';
$SIG{'KILL'} = 'sig_kill_handler';
$SIG{'SYS'} = 'sig_sys_handler';
$SIG{'PIPE'} = 'sig_pipe_handler';
$SIG{'ALRM'} = 'sig_alrm_handler';

print "This program is process ID #$$\n";
while(1) {
        
};

