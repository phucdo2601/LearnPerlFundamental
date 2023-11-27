

my $count = 0;

sub question {
    print("What 's the capiy ig Englang? ");
    my $entry = <STDIN>;
    chomp($entry);
    if($entry eq 'london') {
        print("Correct answer!\n");
        $count++; 
        question2();
    } else {
        print("WRONG!!\n");
        question2();
    }
} 

sub question2 {
    print("WHat 's the capiy ig France? ");
    my $entry = <STDIN>;
    chomp($entry);
    if($entry eq 'paris') {
        print("Correct answer!\n");
        $count++; 
        question3();
    } else {
        print("WRONG!!\n");
        question3();
    }
}

sub question3 {
    print("WHat 's the capiy ig ThaiLand? ");
    my $entry = <STDIN>;
    chomp($entry);
    if($entry eq 'bangkok') {
        print("Correct answer!\n");
        $count++; 
        score();
    } else {
        print("WRONG!!\n");
        score();
    }
}

sub score {
    print("Your score ", $count);
}


&question;