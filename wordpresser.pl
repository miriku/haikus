$nonce = "";
opendir($dh, ".");
@sorted = sort {$b<=>$a} (readdir($dh));
while($_ = shift @sorted)
{
	unless(/\.md/) { next; }
	if(/README/) { next; }
	print $nonce; 
	$nonce = "***\n\n";
	open(RH, $_);
	while(<RH>)
	{
		chomp;
    s/\s\s/\s/g;
		print $_ . " ";
	}
	print "\n\n";
}
