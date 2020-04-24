#!/usr/bin/perl
# @nu11secur1ty
print "Give the url...\n";
chomp (my $URL_target = <STDIN>);
my $zapnu11secur1ty_killer_auto = `zapnu11secur1ty -quickurl $URL_target -quickout $URL_target.xml`;
  print "$zapnu11secur1ty\n";
system($zapnu11secur1ty)
