#!/usr/bin/perl

use strict;
use warnings;
use POSIX;

my @banned_list = ("dave", "phucdn", "joe");

sub login {
    print("Enter login name:\n");
    my $entry = <STDIN>;
    chomp($entry);

    if(grep {
        $entry eq $_
    }  @banned_list) {
       print("Access denied\n");
       sleep(2);
       bannedMessage();
    } else {
        print("Access granted!\n");
        welcome();
    }
}

sub bannedMessage {
    print("You are a naughty boy on the banned list\n");
}

sub welcome {
    print("Welocme: -)\n");
    login_file();
}

sub login_file {
    print("Created text file...\n");
    createFile();
}

sub createFile {
    print("File Created\n");
    open(my $fileHandler, ">", "New_Login.txt") or die "error";
    print($fileHandler "Welcome to the file\n");
    close($fileHandler);
}

&login;
