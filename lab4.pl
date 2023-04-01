print "\n student Mark Processing";
print "\n -----------------------\n";
$file ="mark.csv";
open($data, '<', $file);
print "English Mark >=40 List\n";
print "-----------------------\n";

while ($line = <$data>) 
{
    @words=split(',',$line);
    $string="";
    if (@words[2]>=40)
      {
         $string=join(",",@words);
      }
    print $string;
}
open($data, '<', $file);
print "Maths Mark <40 List\n";
print "--------------------\n";
while ($line = <$data>) 
{
    @words=split(',',$line);
    $string="";
    if (@words[3]<40)
      {
         $string=join(",",@words);
      }
    print $string;
 }
print "EScience Mark >=70 List\n";
print "-----------------------\n";
open($data, '<', $file);
while ($line = <$data>) 
{
    @words=split(',',$line);
    $string="";
    if (@words[4]>=70)
      {
         $string=join(",",@words);
      }
    print $string;
 }
