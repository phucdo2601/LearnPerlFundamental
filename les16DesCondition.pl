use strict;
use warnings;

my @skills =  ("Perl", "Java", "Python", "C#", "Ruby", "Phucdn");

# if ($skills[-1] eq "Phucdn") {
#     print "Array match with conditions";
# }
# else {
#     print "Array not match with conditions";
# }

unless  (scalar @skills == 6) {
      print "Array not match with conditions";
} else {
    print "True";
}
