=blockComment
    1 - my => Variable declared with myscope at the beginning of a script is accessed throughout the script including subroutines -> private

    2- local => Variable declared within only block or a subroutine ->protected

    3- our: Accessible globally -> public
=cut

sub localTestFunc {
    our $testName = "Local Variables";
    print "Inside test: $testName\n";
}

localTestFunc();
print "$testName";