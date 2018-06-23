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
    