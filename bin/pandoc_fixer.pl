#!/usr/bin/perl -w
use strict;

if($#ARGV!=0) {
    die "Usage: pandox_fixer.pl input.md";
}
my($input)=shift(@ARGV);
if(!($input =~ /.md$/)) { 
    die "Usage: pandox_fixer.pl input.md";
}
my($line);

my($gitdate)=`git log $input | grep Date | head -n 1`;
chomp($gitdate);
$gitdate =~ s/Date: *//g;
$gitdate =~ s/\s*\+.*$//g;

    
$input =~ s/.md/.html/;

open INPUT, $input or die;

my($input_path)=$input;
$input_path =~ s|/[^/]*$||g;
# print $input."\n\n";

my($url_path) = "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/".$input_path;

my($gitlab_origin)= "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/";

while(defined($line=<INPUT>)) {
#    $line =~ s|https://gitlab.inria.fr/learninglab/|https://learninglab.gitlabpages.inria.fr/|g; ## Not such a good idea!
    if($input=~ /_fr.html/) {
	$line =~ s|<body>|<body>Les <a href='$gitlab_origin/$input'>sources de ce document sont disponibles sur gitlab</a>.|g;
    } else {
	$line =~ s|<body>|<body>The <a href='$gitlab_origin/$input'>source of this this document is available on gitlab</a>.|g;
    }
    $line =~ s|---</p>|<hr/>|g;
    $line =~ s|Date:.*<br|<i>Date: $gitdate</i><br|g;
    $line =~ s|<p>TITLE:\(.*\)<br|<b>TITLE:$1</b><br|g;
    $line =~ s|href=" ---</p>|<hr/>|g;

    $line =~ s|img src="http|img src="%|g;
    $line =~ s|img src="([^%][^"]*)"|img src="$url_path/$1"|g;
    $line =~ s|img src="%|img src="http|g;

    # if($line =~ /img src="([^%][^"]*)"/) {
    # 	$line = "\t".$line;
    # }
    if($line =~ /<p>AUTHOR:/) { next; }
    print $line;
}

