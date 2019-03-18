#!/bin/bash -v
touch /data/IBM/informix/data/demo_g1/daneAM1_1
chmod 660 /data/IBM/informix/data/demo_g1/daneAM1_1

touch /data/IBM/informix/data/demo_g1/daneAM2_1
chmod 660 /data/IBM/informix/data/demo_g1/daneAM2_1
touch /data/IBM/informix/data/demo_g1/daneAM2_2
chmod 660 /data/IBM/informix/data/demo_g1/daneAM2_2
touch /data/IBM/informix/data/demo_g1/daneAM3_1
chmod 660 /data/IBM/informix/data/demo_g1/daneAM3_1
touch /data/IBM/informix/data/demo_g1/daneAM3_1_mirror
chmod 660 /data/IBM/informix/data/demo_g1/daneAM3_1_mirror
touch /data/IBM/informix/data/demo_g1/tmpAM1_1
chmod 660 /data/IBM/informix/data/demo_g1/tmpAM1_1
touch /data/IBM/informix/data/demo_g1/tmpAM1_2
chmod 660 /data/IBM/informix/data/demo_g1/tmpAM1_2
onspaces -c -d daneAM1 -p /data/IBM/informix/data/demo_g1/daneAM1_1 -o 0 -s 50000
onspaces -c -d daneAM2 -p /data/IBM/informix/data/demo_g1/daneAM2_1 -o 0 -s 50000
onspaces -a daneAM2 -p /data/IBM/informix/data/demo_g1/daneAM2_2 -o 0 -s 20000
onspaces -c -d daneAM3 -p /data/IBM/informix/data/demo_g1/daneAM3_1 -o 0 -s 50000 -m /data/IBM/informix/data/demo_g1/daneAM3_1_mirror 0
onspaces -c -d tmpAM1 -t -p /data/IBM/informix/data/demo_g1/tmpAM1_1 -o 0 -s 30000
onspaces -c -d tmpAM2 -t -p /data/IBM/informix/data/demo_g1/tmpAM1_2 -o 0 -s 30000
onstat -d > 1_5.txt
oncheck -pe > 1_6.txt
