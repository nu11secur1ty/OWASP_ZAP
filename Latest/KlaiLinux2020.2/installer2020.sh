#!/usr/bin/bash
# author @nu11secur1ty 2020
cd /opt/
  sudo wget https://github.com/zaproxy/zaproxy/releases/download/w2020-04-21/ZAP_WEEKLY_D-2020-04-21.zip
  sudo unzip ZAP_WEEKLY_D-2020-04-21.zip
      cd
    sudo ln -s /opt/ZAP_WEEKLY_D-2020-04-21/zap.sh /usr/bin/zapnu11secur1ty
exit 0;
