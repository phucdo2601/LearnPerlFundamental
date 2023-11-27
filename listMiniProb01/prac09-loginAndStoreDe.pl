#!/usr/bin/perl

use strict;
use warnings;

my @login_details = ();

sub login {
    print("Username:\n");
    my $username = <STDIN>;
    chomp($username);
    print("Password:\n");
    my $password = <STDIN>;
    chomp($password);

    push(@login_details, [$username, $password]);
    print("Login details now store in array\n");
    get_login_details();

}

sub get_login_details {
    print("Get login details Y/N?\n");
    my $answer = <STDIN>;
    chomp($answer);
    if(lc($answer) eq "y") {
        print("Please wait...\n");
        sleep(2);
        foreach my $login (@login_details) {
            my ($username, $password) = @$login;
            print("Username: $username\n");
            print("Password: $password\n");
        }
        exit;
    }
}
&login;