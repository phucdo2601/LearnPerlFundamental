#!/usr/bin/perl -w
use strict;
use warnings;

=blockComment
    Now, after we have made the reference, we need to use it to access the value. 
    Dereferencing is the way of accessing the value in the memory pointed by the reference. 
    In order to dereference, we use the prefix $, @, % or & depending on the type of the 
    variable(a reference can point to a array, scalar, or hash etc). 

    References can be created to scalars, arrays, hashes and subroutines

    1/ Declarations:
        By using a backslash before a variable, a reference can be created

    2/ Dereferencing:
        scalar: $$,
        array; $$,
        hash: %$,
        subroutine: &$,

    3/ Passing references to functions.

    4/ Anonymous Arrays and hashes
=cut

my $testVar = "Phuc Do";
my @testArr = ("Perl", "PYTHON", "Go", "Java", "JavaScript", "Php");

my %testHashes = ("yahoo.com" => 101, "google.com" => 102, "gitam.org" => 103, "'au.org" => 402, "microsoft.com" => 403);

# my $testVarRef = \$testVar;
# my $testArrRef = \@testArr;
# my $testHashesRef = \%testHashes;

# print "$testVarRef\n";
# print "$testArrRef\n";
# print "$testHashesRef\n";

# print "$$testVarRef\n";
# print "@$testArrRef\n";
# print %$testHashesRef, "\n";

# Using $ for describe another data type
my $testVar2 = "Phuc Do";
my $testArr2 = ["Perl", "PYTHON", "Go", "Java", "JavaScript", "Php"];

my $testHashes2 = {"yahoo.com" => 101, "google.com" => 102, "gitam.org" => 103, "'au.org" => 402, "microsoft.com" => 403};

my $testVarRef2 = \$testVar2;

# print "@$testArr2\n";
# print %$testHashes2, "\n";

# display ref type basic method 1 on sub
sub testDisRefVal {
    my ($ref1, $ref2, $ref3) = @_;

    print "@$ref1\n";
    print %$ref2,"\n";
    print "$$ref3\n";
}

testDisRefVal(\@testArr, \%testHashes, \$testVar);

# display ref type basic method 2 on sub
sub testDisRefVal2 {
    my ($ref1, $ref2, $ref3) = @_;

    print "@$ref1\n";
    print %$ref2,"\n";
    print "$$ref3\n";
}
testDisRefVal2($testArr2, $testHashes2, $testVarRef2);
