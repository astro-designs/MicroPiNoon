#!/bin/bash

if not exist /boot/hostname.txt
    sudo cp ./hostname.txt /boot

if exist /boot/autorun.sh
    sudo cp /boot/autorun.sh /boot/autorun.old -y
    
if not exist /boot/autorun.sh
    sudo cp ./autorun.sh /boot
    