use warnings;
use strict;

my @website_blacklist = ("https://www.facebook.com", "https://twitter.com", "https://www.instagram.com");

sub enter_website {
    print("Type full url: ");
    my $url = <STDIN>;
    chomp($url);
    if(grep {$_ eq $url}  @website_blacklist) {
        print("Access denied - site on blackList!\n");
        update_blacklist();
    } else {
        print("Site not on blacklist!\n");
        system("start", $url);
    }

}

sub update_blacklist {
    print("Add website to blacklist\n");
    my $url = <STDIN>;
    chomp($url);
    push(@website_blacklist, $url);
    print("Currently on blacklist: @website_blacklist\n");
    sleep(3);
    enter_website();
}

enter_website();