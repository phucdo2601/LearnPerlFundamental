
#!/usr/bin/perl -w
use DBI;

$user = "root";
$password = "12345678";

my $dbh = DBI->connect("DBI:mysql:learn_php_fun_crud_b01",
        $user, $password)
        or die "Can't connect to database: $DBI::errstr\n";

print "connected to the database\n";

my $listData = $dbh->prepare("select * from clients");

$listData->execute();

print "\tQuery results:\n================================================\n";
# fetch list data
while (my @row = $listData->fetchrow_array()) {
    print "@row\n";
}

# if the function cannot be execute, show a warning.
warn "Problem in retrieving results", $listData->errstr( ), "\n"
if $listData->err();
  
print "\n";

# insert new record
# my $insertData = $dbh->prepare("insert into clients (name, email, phone, address) values(?,?,?,?)");
# my $name = "test-name08";
# my $email = 'testEmail08@gmail';
# my $phone = '345345345';
# my $address ='testAddress08';

# $insertData->execute($name, $email, $phone, $address);
# print "Successfully inserted values into the table\n";