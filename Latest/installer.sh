#!/usr/bin/bash
# author @nu11secur1ty 2020
cd /opt/
  wget https://github.com/zaproxy/zaproxy/releases/download/w2020-04-14/ZAP_WEEKLY_D-2020-04-14.zip
  unzip ZAP_WEEKLY_D-2020-04-14.zip
      cd
    ln -s /opt/ZAP_D-2020-04-14/zap.sh /usr/bin/zapnu11secur1ty
exit 0;
