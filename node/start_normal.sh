#!/bin/bash

cp /home/pi/RPiPlay/.rpiplay_normal /home/pi/RPiPlay/.rpiplay_conf
sudo systemctl restart rpiplay.service
