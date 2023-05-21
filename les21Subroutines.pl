
# Perl Program to demonstrate the 
# subroutine declaration and calling
  
#!/usr/bin/perl
  
# defining subroutine

sub testSub {
    print "Testing Subroutine";
}

sub testSubWithReturnVal {
    $x = 4;
    return $x * $x;
}

sub testSubWithAgr {
    $num1 =shift;
    $num2 =shift;

    return $num1 + $num2;
}

sub testSubWithAgr2 {
    $num1 =$_[0];
    $num2 =$_[1];

    return $num1 * $num2;
}

# testSub();
$c = testSubWithReturnVal();
$d = testSubWithAgr(10, 15);
$e = testSubWithAgr2(10, 15);
print $e;