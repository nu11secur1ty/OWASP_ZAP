#!/usr/bin/bash
# author @nu11secur1ty 2020
# remove before installing the latest version

cd /opt/
sudo rm -rf /opt/*ZAP_*
sudo rm -rf /usr/bin/zapnu11secur1ty
  sleep 3;
# cd /opt/
  sudo wget https://github.com/zaproxy/zaproxy/releases/download/w2020-04-21/ZAP_WEEKLY_D-2020-04-21.zip
  sudo unzip ZAP_WEEKLY_D-2020-04-21.zip
      cd /root/
    sudo ln -s /opt/ZAP_D-2020-04-21/zap.sh /usr/bin/zapnu11secur1ty
exit 0;
