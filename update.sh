git clone https://github.com/Mobassar4u/Jio-Play-IPTV-Web-App
rm -rf /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/
mkdir /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/
cp -r Jio-Play-IPTV-Web-App/* /data/data/com.termux/files/usr/share/apache2/default-site/htdocs && rm -rf Jio-Play-IPTV-Web-App/
rm /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/httpd.conf /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/android.sh /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/jiotv.sh
mkdir -p .termux/boot
mv /data/data/com.termux/files/usr/share/apache2/default-site/htdocs/auto_boot.sh ./.termux/boot/
apachectl start
termux-wake-lock
echo 'Jio TV' | figlet
echo 'PHP \n Server' | figlet
echo '\033[42m Server Installed Successfully.\n Go to the below Address \n to login and continue setup \033[0m'
echo '\033[32m '`ip route get 1.2.3.4 | awk '{print $9}'`':8080\n\033[0m'
