#!/usr/bin/perl -w
use strict;

my($line);
while(defined($line=<STDIN>)) {
     if($line =~ /^(.*)<img *src="([^"]*)"(.*)$/g) {
        my($pre,$image,$post) = ($1,$2,$3);
	$image =~ s|file://||;
#        print "$image\n";
        my $base64=`base64 -w 0 $image`;
        my $format=$image;
        $format =~ s/.*\.//g;
        print $pre."<img src=\"data:image/$format;base64,".$base64.'"'.$post;
     } else {
        print $line;
     }
}
