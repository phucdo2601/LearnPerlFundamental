use strict;
use warnings;

my $url1 = "https://www.google.com.vn/";
my $url2 = "https://www.youtube.com/";
my $url3 = "https://thanhnien.vn/";

sub search {
    print("Enter a search engine: ");
    my $entry = <STDIN>;
    chomp($entry);
    if($entry eq $url1) {
        print("Openning Google...");
        google();
    } elsif ($entry eq $url2) {
        print("Openning YOUTUBE...");
        youtube();
    } elsif ($entry eq $url3) {
        print("Openning THANHNIEN...");
        thanhNien();
    } else {
        print("Enter is not regconized");
    }
}

sub google {
    system("start $url1");
}

sub youtube {
    system("start $url2");
}

sub thanhNien {
    system("start $url3");
}

search;