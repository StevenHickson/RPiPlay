#!/bin/bash

echo "Warning. You must run this script with sudo otherwise it won't work"
cp rpiplay.service /lib/systemd/system/
systemctl daemon-reload
update-rc.d rpiplay defaults
cp rpiplay_start /etc/cron.d/

echo "Add the following to your /etc/sudoers file with visudo"
echo "%pi ALL=NOPASSWD: /bin/systemctl start rpiplay.service"
echo "%pi ALL=NOPASSWD: /bin/systemctl stop rpiplay.service"
echo "%pi ALL=NOPASSWD: /bin/systemctl restart rpiplay.service"
echo "%pi ALL=NOPASSWD: /bin/service rpiplay start"
echo "%pi ALL=NOPASSWD: /bin/service rpiplay stop"
echo "%pi ALL=NOPASSWD: /bin/service rpiplay restart"
