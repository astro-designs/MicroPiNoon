#!/bin/bash

if [ ! -f /boot/hostname.txt ]
then
    echo Adding hostname.txt
    sudo cp ./hostname.txt /boot
fi

if [ ! -f /boot/autorun.sh ]
then
    echo Adding new autorun.sh
    sudo cp ./autorun.sh /boot
fi
    
if [ -f /boot/autorun.sh ]
then
    echo Replacing autorun.sh
    sudo cp /boot/autorun.sh /boot/autorun.old -f
    sudo cp ./autorun.sh /boot
fi

if [ -f /home/pi/piz-moto/examples/ps3bot.py ]
then
    echo Updating ps3bot.py
    rm /home/pi/piz-moto/examples/ps3bot.py
    cd /home/pi/piz-moto
    git pull 
fi

if [ ! -f /home/pi/piz-moto/examples/ps3bot.py ]
then
    echo ps3bot.py not found
fi
