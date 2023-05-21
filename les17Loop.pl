
#!/usr/bin/perl

# for loop
# for($i = 0; $i < 5; $i++) {
#     print "$i\n";
# }

# foreach lopp
# my @skills =  ("Perl", "Java", "Python", "C#", "Ruby", "Phucdn");
# foreach $word (@skills) {
#     print "$word\n";
# }

# while loop
# $i = 1;
# while ($i <= 20) {
#     print "$i\t";
#     $i++;
# }

# do while loop -- luon luon xu ly mot lan r moi check dk
# $i = 1;
# do {
#     print "$i\t";
#     $i++;
# }while ($i <= 20)

# util loop -- khac while loop -- nhan mot dk va chi chay khi dieu kien sai
$i = 20;
until ($i <= 1) {
    print "$i\t";
    $i--;
}
