#!/usr/bin/bash
# author @nu11secur1ty 2020
cd /opt/
  wget https://github.com/zaproxy/zaproxy/releases/download/w2020-04-14/ZAP_WEEKLY_D-2020-04-14.zip
  unzip ZAP_WEEKLY_D-2020-04-14.zip
  
  chmod a+x ZAP_2_9_0_unix.sh
    ./ZAP_2_9_0_unix.sh
exit 0;
