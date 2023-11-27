#!/usr/bin/perl

use strict;
use warnings;

sub enter_password {
    my $password = "123qwe";
    print("Enter Password:\n");
    my $pass = <STDIN>;
    chomp($pass);

    if($pass eq $password) {
        print("Accesss Granted\n");
    } else {
        message();
    }
}

sub message {
    print("Access Denied!\n" x 20); 
}

&enter_password;