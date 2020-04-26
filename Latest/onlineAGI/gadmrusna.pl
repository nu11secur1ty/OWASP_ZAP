#!/usr/bin/perl
# @nu11secur1ty
use strict;
use warnings;
use diagnostics;

my $dt = time();
my $check = 1;
        if ($check > 0 ){
                chomp (my $dir = `sudo mkdir -p /home/zapcontainer/report.$dt`);
                system($dir);
        }

        my $dti = localtime();

        print "The gathering begins at $dti......\n\n\n";

print "Give the URL...\n";
chomp (my $URL_ = <STDIN>);
chomp (my $dir = `sudo mkdir -p /home/zapcontainer/report.$dt$URL_`);
my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_ -quickout /home/zapcontainer/report.$dt$URL_/zap.xml`;
# Working...
#  sleep 3;
#  my $killer_tuaka_prosti = `kill $(pgrep -f zapnu11secur1ty)`;

        #################################################################
                my $move = `sudo mv /root/.html /home/zapcontainer/report.$dt$URL_/`;
                my $chr0m_ = `google-chrome /home/zapcontainer/report.$dt$URL_/zap.xml`;
                my $chr0m_2 = `google-chrome /home/zapcontainer/report.$dt$URL_/.html`;
        
        #------------------------------------------------------------#
               # my $move = `sudo mv /root/.html /home/zapcontainer/`;
               #  my $chr0m_ = `google-chrome /home/zapcontainer/zap.xml`;
               # my $chr0m_2 = `google-chrome /home/zapcontainer/.html`;
               # my $dt = time();

        exit 0;
