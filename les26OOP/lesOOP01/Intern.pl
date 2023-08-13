package Intern;
require "./Student.pl";
use strict;
use warnings;
our @ISA = qw(Student);

sub new {
    my $class = $_[0];
    my $obj = $class->SUPER::new(
        $_[1],
        $_[2],
        $_[3],
        $_[4],
        $_[5],
        $_[6],
    );

    $obj->{company} = $_[7];
    bless $obj, $class;
    return $obj;
}

sub display {
    my $obj = $_[0];
    $obj->SUPER::display();
    print "\nCompany: ".$obj->{company};
}

sub DESTROY {
    print "\nDESTROY involked from Intern.pl\n";
}

1;
