use strict;
use warnings;
use File::HomeDir;
use POSIX;
use Cwd;

my $testVar = "testAbc01";
my @banned_users = ("joe", "dave", 'bill');
my $password = "admin";

sub login {
    print("Enter usesr name: ");
    my $user = <STDIN>;
    chomp($user);
    if(grep{$_ eq $user} @banned_users) {
        print("This is user is banned\n");
        try_again();
    } else {
         print("Use isn't banned\n");
         print("You can access the web...\n");
        sleep(2);
        web();
    }
}

sub try_again {
    login();
}

sub web {
    print("Openning browser...\n");
    sleep(1);
    my $url = "https://www.youtube.com/watch?v=UUZbmY6NHy8";
    system("start $url");
}

login;
