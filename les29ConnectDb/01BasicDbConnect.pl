#!/usr/bin/perl -w

use DBI;

# db info
my $username = "root";
my $password = "12345678";
my $dbName = "learn_perl_b01";

# hash for information connect db
my %paramsConnect = ("username" => $username, "password" => $password, "dbName" => $dbName);
my $usernameRef = \$username;
my $paramsConnectRef = \%paramsConnect;
# my $dbh = DBI->connect("DBI:mysql:learn_perl_b01", $$usernameRef, $password) or die "Can 't connect to database $DBI::errstr\n";

# print %$paramsConnectRef{'username'}, "\n";
# print $paramsConnectRef->{username}, "\n";
# print "connected successfully\n";

# input the reference value on sub through hash 
sub connectDatabase {
    my ($username, $password, $databaseName) = @_;
    print "$$username\n";
    print "$$password\n";
    print "$$databaseName\n";
    
    my $dbh = DBI->connect("DBI:mysql:$$databaseName", $$username, $$password) or die "Can 't connect to database $DBI::errstr\n";
    print "connected successfully\n";
}

# connectDatabase(\$paramsConnectRef->{username}, \$paramsConnectRef->{password}, \$paramsConnectRef->{dbName});

sub testSumSub {
    my ($par1, $par2) = @_;

    return $$par1 + $$par2;
}

my @testArrNum = (4,5,7,2,12,34);
my $testArrNumRef = \@testArrNum;

# $res01 = testSumSub(\$testArrNumRef->[1], \$testArrNumRef->[2]);

# print "The result of testSumSub sub: ", $res01, "\n";

sub makeConnectDb {
    my ($username, $password, $databaseName) = @_;
    my $dbh = DBI->connect("DBI:mysql:$$databaseName", $$username, $$password) or die "Can't connect to database: $DBI::errstr\n";
    return $dbh;
}


# input reference on sub perl b01
sub listData {
    my ($conStr) = @_;
    my $listData = $$conStr->prepare("SELECT * FROM gamedata");
    $listData->execute();

    print "\tQuery results:\n================================================\n";
    # fetch list data
    while (my @row = $listData->fetchrow_array()) {
        print "@row\n";
    }

}

my $conStr = makeConnectDb(\$paramsConnectRef->{username}, \$paramsConnectRef->{password}, \$paramsConnectRef->{dbName});
print "$conStr\n";

# listData(\$conStr);

 