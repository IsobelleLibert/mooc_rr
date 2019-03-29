#!/usr/bin/perl -w
use strict;

my($usage) = "Usage: pandox_fixer.pl org_md_files.lst";
($#ARGV==0) or die $usage;

sub pandoc_export {
    my($input)=shift(@_);
    ########### Git date #################
    my($gitdate)=`git log --date=short $input | grep Date | head -n 1`;
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
    my($raw_path) = "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/raw/master/".$input_path;
    my($raw_path_percent) = $raw_path; $raw_path_percent =~ s/^http/%/g;
    my($tree_path) = "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/tree/master/".$input_path;
    my($pages_path) = "https://learninglab.gitlabpages.inria.fr/mooc-rr/mooc-rr-ressources/".$input_path;
    my($pages_path_percent) = $pages_path; $pages_path_percent =~ s/^http/%/g;
    my($gitlab_origin)= "https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/blob/master/";

    ########### Pandoc   #################

    print "Exporting $input\n";
    my($pandoc_output) = `LANG=C ; pandoc -s --mathjax -f $type -t html -o $output_temp $input`;open INPUT, $output_temp or die;
    open OUTPUT, "> ".$output or die;


    while(defined(my $line=<INPUT>)) {
	if($line =~ /<p class="author"/) { next; }
	if($line =~ /<h1 class="title"/) { next; }
	if($line =~ /<p class="date"/) { next; }
	if($line =~ /<p>.*broken-links:nil/) { next; }

	#    $line =~ s|https://gitlab.inria.fr/learninglab/|https://learninglab.gitlabpages.inria.fr/|g; ## Not such a good idea!
	if($line =~ /<body>/) {
	    if($output=~ /_fr.html/) {
		$line =~ s|<body>|<body>Les <a href='$gitlab_origin/$input'>sources de ce document sont disponibles sur gitlab</a>.|g;
		$line .= "<br><i>Version du $gitdate.</i><br><hr/>\n"
	    } else {
		$line =~ s|<body>|<body>The <a href='$gitlab_origin/$input'>source of this document is available on gitlab</a>.|g;
		$line .= "<br><i>Last version: $gitdate</i><br><hr/>\n"
	    }
	}
	$line =~ s|<span class="smallcaps">TOC</span>||g;

	$line =~ s|---</p>|<hr/>|g;
	# $line =~ s|Date:.*<br|<i>Date: $gitdate</i><br|g;
	# $line =~ s|<p>TITLE:\(.*\)<br|<b>TITLE:$1</b><br|g;


	#### Processing links to images, org files, archives, ...
	$line =~ s|img src="http|img src="%|g;
	$line =~ s|img src="([^%][^"]*)"|img src="$raw_path/$1"|g; # ?inline=false
	$line =~ s|img src="%|img src="http|g;

	$line =~ s|href="http|href="%|g;
	$line =~ s|href="([^%#][^"]*.tgz)"|href="$pages_path_percent/$1"|g; 
	$line =~ s|href="([^%#][^"]*)"|href="$tree_path/$1"|g; # ?inline=false
	$line =~ s|href="%|href="http|g;

	# if($line =~ /img src="([^%][^"]*)"/) {
	# 	$line = "\t".$line;
	# }

	#### Changing headers
	foreach my $i (4,3,2,1) {
	    my($j)=$i+1;
	    $line =~ s|<h$i|<h$j|g;
	    $line =~ s|</h$i|</h$j|g;
	}
	print OUTPUT $line;
    }

    close OUTPUT;
    close INPUT;
    unlink($output_temp);
}

sub main() {
    my($input_list)=shift(@ARGV);
    open LIST, $input_list or die;
    open INDEX, "> public/index.org" or die;
    my($f);
    print INDEX "| Gitlab Origin  | Pandoc HTML (Gitlab pages) | FUN Outcome |
|---+---+---|\n";

    while(defined($f = <LIST>)) {
	chomp($f);
	if($f =~ /^#/) { warn "Skipping $f"; next;}
	if($f =~ /^\s*$/) {
	    print INDEX "|---+---+---|\n";
	    next;
	}
	my($file,$url) = split(/\s*#\s*/,$f);
	if($file eq "" || !defined($url)) { warn "Malformed line"; next;}
	# print "'$file' --- '$url'\n";
	pandoc_export($file);

	my($html)=$file;     $html=~ s/\.[^\.]*$/.html/g;
	my($url_id) = $url;  $url_id =~ s|^.*jump_to_id/||g;
	print INDEX "| [[https://gitlab.inria.fr/learninglab/mooc-rr/mooc-rr-ressources/tree/master/$file][$file]] | [[$html]] | [[$url][$url_id]] |\n";
    }
    print INDEX "|---+---+---|\n";
    close INDEX;
    close LIST;

    my($pandoc_output) = `LANG=C ; pandoc -s -c readtheorg.css -f org -t html -o public/index.html public/index.org`;
}

main()
