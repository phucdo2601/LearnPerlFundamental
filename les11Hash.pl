=blockComment
    Hash is a set having key value pairs
    Syntax %<HashName> = (key1 => name1, key2 => value2, key3 => value3)
=cut

%skills =(1 => "Java", 2=> "JavaScript", 3=> "Python", 4=> "C#", 5=> "Flutter");
print %skills{1}, "\n";

foreach $k (sort keys %skills) {
    print "$k => $skills{$k}\n";
}

@skillsValues = values %skills;
@skillsKeys = keys %skills;

print "list keys: @skillsKeys\n";
print "list values: @skillsValues\n";

if(exists($skills{1})){
    print "Existed\n";
} else {
    print "Not Existed\n";

}

if(!exists($skills{10})){
    print "Existed\n";
} else {
    print "Not Existed\n";

}

print scalar @skillsKeys, "\n";
print scalar @skillsValues, "\n";

$skills{1} =  "Phucdo\n";
print $skills{1};

delete $skills{1};

foreach $k (sort keys %skills) {
    print "$k => $skills{$k}\n";
}