#!/usr/bin/bash
# author @nu11secur1ty 2020
curl -s https://raw.githubusercontent.com/nu11secur1ty/Kali-Linux/master/JAVA-INSTALLER-SILENT-MOD/javas1lent.sh | bash
cd /opt/
  wget https://github.com/zaproxy/zaproxy/releases/download/w2020-04-21/ZAP_WEEKLY_D-2020-04-21.zip
  unzip ZAP_WEEKLY_D-2020-04-21.zip
      cd /root/
    ln -s /opt/ZAP_D-2020-04-21/zap.sh /usr/bin/zapnu11secur1ty
exit 0;
