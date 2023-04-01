print "\n student Mark Processing";
print "\n -----------------------\n";
$file ="mark.csv";
open($data, '<', $file);
print "English Mark >=40 List\n";
print "-----------------------\n";
while ($line = <$data>) 
{
    @words=split(",",$line);
    if (@words[2]>=40)
      {
        $string1=join(",",@words);
        print $string1;
      }
}
open($data, '<', $file);
print "Maths Mark <40 List\n";
print "-------------------\n";
while ($line = <$data>) 
{
    @words=split(",",$line);
    if (@words[3]<40)
      {
        $string1=join(",",@words);
        print $string1;
      }
}
open($data, '<', $file);
print "Science Mark >70 List\n";
print "---------------------\n";
while ($line = <$data>) 
{
    @words=split(",",$line);
    if (@words[4]>70)
      {
        $string1=join(",",@words);
        print $string1;
      }
}

