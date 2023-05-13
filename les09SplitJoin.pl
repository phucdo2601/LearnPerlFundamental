my $line = "file1.gzfile1.gzfile3.gz";
my @abc = split /(?<=\.gz)/, $line;
print @abc;