#!/bin/bash

cp /home/pi/RPiPlay/.rpiplay_rotate /home/pi/RPiPlay/.rpiplay_conf
sudo systemctl restart rpiplay.service
