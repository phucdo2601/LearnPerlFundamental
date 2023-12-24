use strict;
use warnings;

my $path1 = "C:\\fakePath";

sub open_directory {
    chdir($path1);
    my @files = glob("*");
    foreach $_(@files) {
        print("$_\n");
    }
}

sub open_file {
    chdir($path1);
    print("File name: ");
    my $entry = <STDIN>;
    chomp($entry);
    open(FILEHANDLER, "<", "$entry") or die "error opening";
    while ($_ = <FILEHANDLER>) {
        print("$_\n");
    }
    close(FILEHANDLER);
}

open_file;