#!/usr/bin/perl

use strict;
use warnings;

my $man_age = 65;
my $woman_age = 60;
my $nationality = "british";

sub check_age {
    print("Claim old age pesion\n");
    print("Enter age:\n");
    my $entry = <STDIN>;

    chomp($entry);

    print("Enter nationality:\n");
    my $entry2 = <STDIN>;

    chomp($entry2);

    if($entry >= $man_age and $entry2 eq $nationality) {
        print("Your are a British man 65 or old you can claim a pension\n");
    } elsif ($entry >= $woman_age and $entry2 eq $nationality) {
        print("Your are a British woman 60 or old you can claim a pension\n");

    } else {
        print("You do not qualify for a pension\n");
    }
}

&check_age;
