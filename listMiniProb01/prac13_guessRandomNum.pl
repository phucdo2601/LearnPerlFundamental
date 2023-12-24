use strict;
use warnings;
use diagnostics;

sub generate_rand_num {
    print("Enter number between 1 - 10: ");
    my $myNum = <STDIN>;
    chomp($myNum);
    my $rand_num = int(rand(10));

    print("Let 's see if your numbers match...\n");
    sleep(1);

    if($myNum == $rand_num) {
        print("You win! Two numbers match: $myNum, $rand_num");
    } else {
        print("YOU LOSE numbers dont match!\n $myNum, $rand_num");
    }
}

generate_rand_num;