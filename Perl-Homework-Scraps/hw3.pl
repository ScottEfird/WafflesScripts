#Scott Efird
#Homework #6
#COSC 4750
#Exercise 7
#1 Write a regular expression for matching a social security number with/out dashes.
if((/^\d{3}-\d{2}-\d{4}$) || (/^\d{9}$)) = true;
#2 A street address: Number, Name, (st/ln/rd/nothing), case insensitive.
/^\d+\s{1}\w+\s{1}(st|ln|rd|)/i

#Exercise 8
#Rewrite #6 so the city can two or more words.
/\w+\s*\w*,\s\w{2}\s{2}\d{5}/
#Must start with a letter, then have any number of letters and/or numbers or none at all, 
#but end with a number
/\S*\d+\B/

#You are going to write a program similar to Grep
#It will take to parameters from the command line. 
#First search string,  second is the file.
#You are search those the file using regex to find the string on each line.  
#For each line where the search string exists, you will print out the line number and line
#As a note, the files you search won't have line numbers, you will have to figure it out.
$searchString = $ARGV[0];
$filename = $ARGV[1];
open(fh, $filename)
	or die "Could not open file '$filename' $!"; 
@array = <fh>;
chomp (@array);
print "Your search string is : $searchString \n";
foreach $line (@array){
	$count = $count + 1;
	if ($line =~ /$searchString/){
	print "Found on line #$count: $line \n";
	}
}

#Exercise 10
print "Enter a string that will have the vowels chagned into X \n";
$string = <STDIN>;
print "Your string is :$string \n";
$string =~ s/[aeiou]/X/g;
print "Your new string is :$string \n";

#Exercise 11
print "Change the letters bdr to X and count the number of changes.\n";
$string = <STDIN>;
print "Your string is :$string \n";
$count  = ($string =~ tr/[bdr]/X/);
print "Your new string is :$string There was $count changes.";