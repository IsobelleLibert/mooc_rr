#!/usr/bin/perl -w
use strict;

my($usage) = "Usage: pandox_fixer.pl input.md";
($#ARGV==0) or die $usage;

my($input)=shift(@ARGV);

########### Git date #################
my($gitdate)=`git log $input | grep Date | head -n 1`;
chomp($gitdate);
$gitdate =~ s/Date: *//g;
$gitdate =~ s/\s*\+.*$//g;

########### Input file ###############
my($type) = "";
my($output) = $input;
if($input =~ /.md$/) {
    $type = "gfm";
    $output =~ s/.md$/.html/;
} elsif ($input =~ /.org$/) {
    $type = "org";
    $output =~ s/.org$/.html/;
} else {
    die "Usage: pandox_fixer.pl input.md";
}
my($output_temp) = $output."tmp";

########### URL Fixing ###############

my($input_path)=$input;
$input_path =~ s|/[^/]*$||g;
my($url_path) = "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/raw/master/".$input_path;
my($gitlab_origin)= "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/";

########### Pandoc   #################

print "Exporting $input\n";
my($pandoc_output) = `LANG=C ; pandoc -s -f $type -t html -o $output_temp $input`;

open INPUT, $output_temp or die;
open OUTPUT, "> ".$output or die;


while(defined(my $line=<INPUT>)) {
    if($line =~ /<p>AUTHOR:/) { next; }
    if($line =~ /<h1 class="title"/) { next; }
    if($line =~ /<h1 class="date"/) { next; }
#    $line =~ s|https://gitlab.inria.fr/learninglab/|https://learninglab.gitlabpages.inria.fr/|g; ## Not such a good idea!
    if($line =~ /<body>/) {
	if($input=~ /_fr.html/) {
	    $line =~ s|<body>|<body>Les <a href='$gitlab_origin/$input'>sources de ce document sont disponibles sur gitlab</a>.|g;
	    $line .= "<br><i>Version du $gitdate.</i><br><hr/>\n"
	} else {
	    $line =~ s|<body>|<body>The <a href='$gitlab_origin/$input'>source of this this document is available on gitlab</a>.|g;
	    $line .= "<br><i>Last version: $gitdate</i><br><hr/>\n"
	}
    }
    $line =~ s|<span class="smallcaps">TOC</span>||g;
    
    $line =~ s|---</p>|<hr/>|g;
    # $line =~ s|Date:.*<br|<i>Date: $gitdate</i><br|g;
    # $line =~ s|<p>TITLE:\(.*\)<br|<b>TITLE:$1</b><br|g;

    $line =~ s|img src="http|img src="%|g;
    $line =~ s|img src="([^%][^"]*)"|img src="$url_path/$1?inline=false"|g;
    $line =~ s|img src="%|img src="http|g;

    # if($line =~ /img src="([^%][^"]*)"/) {
    # 	$line = "\t".$line;
    # }
    print OUTPUT $line;
}

