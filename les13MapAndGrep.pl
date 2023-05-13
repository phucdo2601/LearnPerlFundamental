
@skills = ("Perl", "Java", "Python", "C#", "Ruby", "C++");

@ucSkills = map(ucfirst, @skills);

# foreach $key ( @ucSkills ) {
#     print "$key\n";
# }

%skills = map { $_ => 4 } @skills;

print keys %skills, "\n";

# @skills = grep { /^P/ } @skills;

# print "@skills\n";

# %skills = map { $_ => 4 } grep { /^P/ }  @skills;

# print keys %skills, "\n";
