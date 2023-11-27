#!/usr/bin/perl

use strict;
use warnings;

sub passwordUser2 {
    my $user = "admin1";
    my $password = 1234;

    print("User Login:\n");
    my $entry1 = <STDIN>;
    chomp($entry1);

    print("Enter password:\n");
    my $entry2 =<STDIN>;

    chomp($entry2);

    if($entry1 eq $user && $entry2 eq $password){
        print("Access Granted!!!");
    } else {
        print("Access Denied!!!")
    }
}

&passwordUser2;