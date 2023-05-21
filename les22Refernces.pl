# Perl program to illustrate the
# Dereferencing of an Array
=blockComment
    Now, after we have made the reference, we need to use it to access the value. Dereferencing is the way of 
    accessing the value in the memory pointed by the reference. In order to dereference, we use the prefix $, @, % or & 
    depending on the type of the variable(a reference can point to a array, scalar, or hash etc). 
=cut
 
# defining an array
@array = ('1', '2', '3'); 
 
# making an reference to an array variable
$reference_array = \@array; 
 
# Dereferencing
# printing the value stored
# at $reference_array by prefixing
# @ as it is a array reference
print @$reference_array;   

@array = ('1', '2', '3');