#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;
use File::HomeDir qw(home);
use File::Spec::Functions qw(catfile);

print "The path is ", catfile( home()) "\n";

print "Give the url, for example: http://domain.com/ or https://domain.com\n";
chomp (my $URL_target = <STDIN>);
        my $zapnu11secur1ty_killer_auto = `zapnu11secur1ty -quickurl $URL_target -quickout /home/nu11secur1ty/zapnu11secur1ty.xml`;
        system($zapnu11secur1ty_killer_auto);
                my $home_DIR = `cd $HOME`;
        my $chr0m_ = `google-chrome $home_DIR zapnu11secur1ty.xml`;
        system($chr0m_);
exit 0;
