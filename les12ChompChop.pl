=blockComment
    -chomp() removes newline at the end of character
    -chop() removes last character from the end of scalar
=cut
# print "Enter a skills: ";
# $input = <STDIN>;

# print "$input\n";
# chomp($input);
# print "$input\n";

# %skills =(1 => "Java", 2=> "JavaScript", 3=> "Python", 4=> "C#", 5=> "Flutter");
# print %skills, "\n";
# print chomp($input);

# print %skills, "\n";

print "Enter a skills for chop(): ";
$input ="Perls";

print "$input\n";
chop($input);
print "$input\n";