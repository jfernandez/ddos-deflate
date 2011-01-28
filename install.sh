#!/bin/sh
if [ -d '/usr/local/ddos' ]; then
	echo; echo; echo "Please un-install the previous version first"
	exit 0
else
	mkdir /usr/local/ddos
fi
clear
echo; echo 'Installing DOS-Deflate 0.6'; echo
echo; echo -n 'Downloading source files...'
wget -q -O /usr/local/ddos/ddos.conf https://github.com/jfernandez/ddos-deflate/raw/master/ddos.conf --no-check-certificate
echo -n '.'
wget -q -O /usr/local/ddos/LICENSE https://github.com/jfernandez/ddos-deflate/raw/master/LICENSE --no-check-certificate
echo -n '.'
wget -q -O /usr/local/ddos/ignore.ip.list https://github.com/jfernandez/ddos-deflate/raw/master/ignore.ip.list --no-check-certificate
echo -n '.'
wget -q -O /usr/local/ddos/ddos.sh https://github.com/jfernandez/ddos-deflate/raw/master/ddos.sh --no-check-certificate
chmod 0755 /usr/local/ddos/ddos.sh
cp -s /usr/local/ddos/ddos.sh /usr/local/sbin/ddos
echo '...done'
echo; echo 'Installation has completed.'
echo 'Config file is at /usr/local/ddos/ddos.conf'
echo 'Install cron script: usr/local/ddos/ddos.sh --cron'
echo 'Please send in your comments and/or suggestions to zaf@vsnl.com'
echo
cat /usr/local/ddos/LICENSE | less
