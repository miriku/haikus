opendir($dh, ".");
$nonce = "";
while(readdir($dh))
{
	unless(/\.md/) { next; }
	if(/README/) { next; }
	print $nonce; 
	$nonce = "***\n\n";
	open(RH, $_);
	while(<RH>)
	{
		chomp;
		print $_ . " ";
	}
	print "\n\n";
}
