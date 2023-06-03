#!/usr/bin/perl -w

use DBI;


# db info
my $username = "root";
my $password = "12345678";
my $dbName = "learn_perl_b01";

my %dbInfoHash = ("username" => $username, "password" => $password, "dbName" => $dbName);

my $dbInfoHashRef = \%dbInfoHash;

sub connectDb {
    my ($username, $password, $dbName) = @_;
    my $dbh = DBI->connect("DBI:mysql:$$dbName", $$username, $$password) or die "Couldn't connect database!";
    return $dbh;
}

sub listGamescore {
    my ($constr) = @_;
    my $listData = $$constr->prepare("SELECT * FROM gamedata");
    $listData->execute();

    print "\tQuery results:\n================================================\n";
    # fetch list data
    while (my @row = $listData->fetchrow_array()) {
        print "@row\n";
    }
}

my $conStr = connectDb(\$dbInfoHashRef->{username}, \$dbInfoHashRef->{password}, \$dbInfoHashRef->{dbName});
# print "$conStr\n";

# listGamescore(\$conStr);


# Reference: Function definition
sub printHash {
    my ($hash) = @_;
    foreach $item (%$hash) {
        print "Item: $item\n";
    }
    
}

$testFuncRef = \&printHash;

# &$testFuncRef($dbInfoHashRef);
&$testFuncRef(\%dbInfoHash);

