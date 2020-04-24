#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;

print "Give the URL...\n";
        chomp (my $URL_ = <STDIN>);
print "Give your home directory\n";
        chomp (my $DIR_ = <STDIN>);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/$DIR_/zapnu11secur1ty.xml`;
        system($zapnu11secur1ty_killer_auto);
        my $chr0m_ = `google-chrome /home/zapnu11secur1ty.xml`;
        system($chr0m_);
exit 0;
