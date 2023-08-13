#!usr/bin/perl

package Student;

use strict;
use warnings;
sub nl {
    print "\n";
}

#object constructor
sub new {
    my $class = $_[0];
    my $obj = {
        name => $_[1],
        surname => $_[2],
        age => $_[3],
        gender => $_[4],
        address => $_[5],
        roll => $_[6],
    };
    bless $obj, $class;
    return $obj;
}

sub setName {
    my $obj->{name} = $_[1];
    return 1;
}

sub setSurname {
    my $obj->{surname} = $_[1];
    return 1;
}

sub setAge {
    my $obj->{age} = $_[1];
    return 1;
}

sub setGender {
    my $obj->{gender} = $_[1];
    return 1;
}

sub setAddress {
    my $obj->{address} = $_[1];
    return 1;
}

sub setRoll {
    my $obj->{roll} = $_[1];
    return 1;
}

sub display {
    my $obj = $_[0];
    print "\nName: ".$obj->{name};
    print "\nSurname: ". $obj->{surname};
    print "\nAge: " .$obj->{age};
    print "\nGender: ".$obj->{gender};
    print "\nAddress: ".$obj->{address};
    print "\nRoll: ".$obj->{roll};
}

sub DESTROY {
    print "\nDESTROY called form Student.pl\n";
}

1;