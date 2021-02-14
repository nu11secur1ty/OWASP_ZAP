#!/usr/bin/perl
# @nu11secur1ty 2021
use strict;
use warnings;
use diagnostics;
use Cwd qw(getcwd);


my $H0me_DIR = getcwd;

print "Give the url, for example: http://domain.com/ or https://domain.com\n";
chomp (my $URL_target = <STDIN>);
        my $zapnu11secur1ty_killer_auto = `zapnu11secur1ty -quickurl $URL_target -quickout $H0me_DIR/zapnu11secur1ty.xml`;
        system($zapnu11secur1ty_killer_auto);
        my $chr0m_ = `google-chrome $H0me_DIR/zapnu11secur1ty.xml`;
        system($chr0m_);
exit 0;
