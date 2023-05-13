=blockComment
    - An array is a list of having scalars of any datatype
    - Array is created with the symbol ->@ (or) qw

=cut

@skils = ("Perl", 5, "Python", 2, "Java", 4);

print "@skils\n";

# Accessing the elements of Array
print "first element: $skils[0]\n";    
print "last element: $skils[-1]\n";    
print "last element but one element: $skills[-2]\n";    
print "elements from 2 to 4 index: @skils[2..4]\n";    
print "elements from 2 to last: @skils[2..$#skills]\n";    
print "last 3 elements: @skils[$#skills-2..$#skills]\n";    

# Declaring a numbered array with range operator
@experinces = (1..10);
print "@experinces\n";

# Array Size
print "Array Size First way: ", scalar @experinces, "\n";
print "Array Size Second way: ", scalar @experinces+1, "\n";

# Functions to add or delete elements in an array
push(@experinces, "PhucDn");
print "@experinces\n";


# Inserting element at the beginning of an array
unshift(@experinces, "TestAdd1");
print "@experinces\n";


# Removing el at the end of an array
$popped = pop(@experinces);
print "@experinces\n";

# Removing element at the begin of an array
$popped = shift(@experinces);
print "@experinces\n";
print "$popped\n";
