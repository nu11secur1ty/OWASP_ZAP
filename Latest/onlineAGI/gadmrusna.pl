#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;
$datestring = localtime();

print "Give the URL...\n";
chomp (my $URL_ = <STDIN>);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/zapnu11secur1ty_$datestring.xml`;
# Working...
#  sleep 3;
#  my $killer_tuaka_prosti = `kill $(pgrep -f zapnu11secur1ty)`;
              my $chr0m_ = `google-chrome /home/zapnu11secur1ty_$datestring.xml`;
        exit 0;
