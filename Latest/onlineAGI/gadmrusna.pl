#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;

my $dt = time();
my $dti = localtime();
print "The gathering begins at $dti......\n\n\n";

print "Give the URL...\n";
chomp (my $URL_ = <STDIN>);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/zapcontainer/zap.xml`;
# Working...
#  sleep 3;
#  my $killer_tuaka_prosti = `kill $(pgrep -f zapnu11secur1ty)`;
my $check = 1;
        if ($check > 0 ){
                chomp (my $dir = `mkdir -p /home/zapcontainer/report.$dt`);
                system($dir);
        }
        #################################################################
                my $move = `sudo mv /root/.html /home/zapcontainer/$dt/`;
                my $chr0m_ = `google-chrome /home/zapcontainer/report.$dt/zap.xml`;
                my $chr0m_2 = `google-chrome /home/zapcontainer/report.$dt/.html`;
        
        #------------------------------------------------------------#
               # my $move = `sudo mv /root/.html /home/zapcontainer/`;
               #  my $chr0m_ = `google-chrome /home/zapcontainer/zap.xml`;
               # my $chr0m_2 = `google-chrome /home/zapcontainer/.html`;
               # my $dt = time();

        exit 0;
