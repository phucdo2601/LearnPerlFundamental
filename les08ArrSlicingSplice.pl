@marks = (54,55,56,57,58,58,60,61,62);
print "@marks[2..5]\n";

splice(@marks, 2, 3, 98..100);
print "@marks\n";

@lastThree = splice(@marks, -3);
print "@lastThree\n";
 