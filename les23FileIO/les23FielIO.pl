#!/ usr / bin / perl

# my ($data) = "";
# open(F, "text.txt") or 
#  die("Error encountered while reading file");
# $data = <F>;
# print("$data");
# $data = readline(*F);
# print("$data");
  
# close(F);

# my($read_data);
# open(DATA, "text.txt") or die "Error in reading the file";
# read(DATA, $read_data, 4);
   
# print($read_data);
# close(DATA);

# write data on file
my($read_data);
open(DATA, "text.txt") or
 die "Error in reading the file";
  
@dat = ("these", "are", "the", "file", "contents");
print DATA @dat;
close(DATA);