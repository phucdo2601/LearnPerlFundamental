@subjects = ("Perl", "Java", "JavaScript", "Python", "C", "C++", "Flutter", "Angula");
print "Subject before sorting: @subjects\n";

@subjects = sort(@subjects);
print "Subject after sorting: @subjects\n";

@arr1 = (1..5);
@arr2 = (6..20);
@arr  = (@arr1, @arr2);
print "@arr\n";