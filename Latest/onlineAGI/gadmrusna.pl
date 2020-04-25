#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;
my $datestring = localtime();
print "The gathering begins at $datestring......\n\n\n";

print "Give the URL...\n";
chomp (my $URL_ = <STDIN>);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/zap.xml`;
# Working...
#  sleep 3;
#  my $killer_tuaka_prosti = `kill $(pgrep -f zapnu11secur1ty)`;
              my $sudo = `sudo su -`;
                my $move = `mv /root/zap.html /home/`;
                  my $chr0m_ = `google-chrome /home/zap.xml`;
                  my $chr0m_2 = `google-chrome /home/zap.html`;
        exit 0;
