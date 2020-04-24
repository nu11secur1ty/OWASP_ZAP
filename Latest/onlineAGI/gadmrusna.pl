#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;

print "Give the URL...\n";
chomp (my $URL_ = <STDIN>);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/zapnu11secur1ty.xml`;
              my $chr0m_ = `google-chrome /home/zapnu11secur1ty.xml`;
        exit 0;
