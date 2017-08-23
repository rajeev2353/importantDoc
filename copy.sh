#!/bin/bash

rsync -auzP --exclude-from 'folder.txt'  -e ssh -p 2232 root@45.113.189.25:/home/wind/WIND/ /home/wind/WIND/ 
