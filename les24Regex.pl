my $strEmail = 'phucdnse140354@fpt.edu.vn';
if($strEmail =~ /^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$/) {
    print "Matched";
} else {
    print "Not Matched";
}

=blockComment
    The m// actually works in the same fashion as the q// operator series.you can use any combination of 
    naturally matching characters to act as delimiters for the expression. For example, m{}, m(), and m>< are all valid. 
    So above example can be re-written as follows −
=cut

if ($strEmail =~ m[fpt]) {
   print "First time is matching with fpt\n";
} else {
   print "First time is not matching with fpt\n";
}