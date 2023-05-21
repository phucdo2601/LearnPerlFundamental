# Define a class named Person
package Person;
 
sub new {
    my $class = shift;
    my $self = {
        _firstName => shift,
        _lastName  => shift,
        _ssn       => shift,
    };
    # Bless the reference as an object of the class
    bless $self, $class;
    return $self;
}
 
sub getFirstName {
    my ($self) = @_;
    return $self->{_firstName};
}
 
sub setFirstName {
    my ($self, $firstName) = @_;
    $self->{_firstName} = $firstName if defined($firstName);
    return $self->{_firstName};
}
 
1;  # End of package declaration, required in Perl
 
# Create a new Person object
my $person = Person->new("John", "Doe", "123-45-6789");
 
# Call the getFirstName method to get the first name of the person
my $firstName = $person->getFirstName();
print "First name: $firstName\n";
 
# Call the setFirstName method to change the person's first name
$person->setFirstName("Jane");
$firstName = $person->getFirstName();
print "New first name: $firstName\n";