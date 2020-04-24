#!/usr/bin/bash
wget https://raw.githubusercontent.com/nu11secur1ty/OWASP_ZAP/master/Latest/onlineAGI/gadmrusna.pl
perl gadmrusna.pl
  sleep 25;
  rm -rf gadmrusna.pl
exit 0:
