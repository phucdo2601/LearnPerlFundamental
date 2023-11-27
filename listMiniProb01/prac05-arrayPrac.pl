#!/usr/bin/perl

use strict;
use warnings;

my @colors = ("red", "green", "blue");

sub add_ele {
    print("Add Element to array\n");
    my $input = <STDIN>;
    push(@colors, $input);
    print("Element added: @colors");
    delete_element();
}

sub delete_element {
    print("This will delete the last element!\n");
    print("Deleting element...\n");
    sleep(2);
    pop(@colors);
    print("Last element removed\n");
    print("@colors");
}

&add_ele;