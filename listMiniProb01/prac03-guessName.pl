#!/usr/bin/perl

use strict;
use warnings;

my $name = "phucdn";
print("================================\n");

print("Guess My name\n");
print("================================\n");

sub guess_name {
    print("Enter Your Guess\n");
    my $guess = <STDIN>;
    chomp($guess);

    if($guess ne $name) {
        print("Your guessed wrong try again\n");
        guess_name();
    } else {
        print("You are right!\n");
        message();
    }
}

sub message {
    print("You are wonderful\n" x 30);
}

&guess_name