#!/bin/bash

#########WIND SELECTED FOLDER BACKUP FROM WIND-SYNC SERVER######################

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G2/ /home/wind/WIND/G2/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G3/ /home/wind/WIND/G3/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G9/ /home/wind/WIND/G9/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G22/ /home/wind/WIND/G22/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/MY3/ /home/wind/WIND/MY3/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/P6/ /home/wind/WIND/P6/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/J3_OPC/ /home/wind/WIND/J3_OPC/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/ENE3_2/ /home/wind/WIND/ENE3_2/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/P2/ /home/wind/WIND/P2/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/P3/ /home/wind/WIND/P3/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G28/ /home/wind/WIND/G28/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/WL1/PR_GE_1/ /home/wind/WIND/WL1/PR_GE_1/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/WL1/PR_GA_1/ /home/wind/WIND/WL1/PR_GA_1/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G22/ /home/wind/WIND/G22/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/WIND/G2/ /home/wind/WIND/G2/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/V/ /home/wind/V/
sleep 10

rsync -auzP -e 'ssh -p 2232' root@45.113.189.25:/home/wind/I2/chotila/turbine/ /home/wind/I2/chotila/turbine/


