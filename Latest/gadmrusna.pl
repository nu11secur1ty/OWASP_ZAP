#!/usr/bin/perl
# @nu11secur1ty
print "Give the url...\n";
chomp (my $URL_target = <STDIN>);
chomp (my $zapnu11secur1ty_killer_auto = `sudo zapnu11secur1ty -quickurl $URL_target -quickout /home/nu11secur1ty/$URL_target.xml`);
  print "$zapnu11secur1ty\n";
system($zapnu11secur1ty)
