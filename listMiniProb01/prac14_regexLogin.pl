use strict;
use warnings;
use feature qw/ signatures /;

my $login_name = "123abc";

sub login {
    print("Enter login name: ");
    my $log =<STDIN>;

    chomp($log);

    if($log =~ m{$login_name}) {
        print("Correct login name\n");
        control_launch();
    } else {
        print("Incorrect login\n");
    }
}

sub control_launch {
    print("Launch Notepad Y or N? ");
    my $entry = <STDIN>;
    chomp($entry);
    if($entry ne 'n') {
        print("Starting notepad...\n");
        system("notepad.exe");
    } else {
        print("Quitting!\n");
        exit;
    }
}

login;