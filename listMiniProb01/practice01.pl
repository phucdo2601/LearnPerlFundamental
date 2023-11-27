#!/usr/bin/perl

use strict;
use warnings;

sub intro {
    print("===================\n");
    print("Perl Calculator\n");
    print("===================\n");
}

sub subtract {
    print("Subtract numbers\n");
    print("Enter number 1:\n");
    my $num1 = <STDIN>;

    print("Enter number 2:\n");
    my $num2 = <STDIN>;

    my $result = $num1 - $num2;

    print("$result\n");

}

sub add {
    print("Total numbers\n");
    print("Enter number 1:\n");
    my $num1 = <STDIN>;
    print("Enter number 1:\n");
    my $num2 = <STDIN>;

    my $result = $num1 + $num2;

    print("The result of total func: $result");
}

sub multi {
    print("Multiple numbers\n");
    print("Enter number 1\n");
    my $num1 = <STDIN>;
    print("Enter number 2\n");
    my $num2 = <STDIN>;
    my $result = $num1 * $num2;
    print("The result of total func: $result");
}

sub divide {
    print("Division numbers\n");
    print("Enter number 1:\n");
    my $num1 = <STDIN>;
    print("Enter number 2:\n");
    my $num2 = <STDIN>;
    my $result = $num1 / $num2;

    print("The result of division func: $result");
}

sub modeFunc {
    print("Mode numbers\n");
    print("Enter number 1:\n");
    my $num1 = <STDIN>;
    print("Enter number 2:\n");
    my $num2 = <STDIN>;
    my $result = $num1 % $num2;

    print("The result of mode func: $result");
}

&intro;
# &subtract;
# &add;
# &multi;
# &divide;
&modeFunc;
