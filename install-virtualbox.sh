#!/bin/bash
#
##################################################################################################################
# Adapted from: https://github.com/erikdubois/Ultimate-Linux-Mint-18.1-Cinnamon/blob/master/install-virtual-box-v2.sh
# Written to be used on 64 bits computers
# Author 	: 	Erik Dubois
# Website 	: 	http://www.erikdubois.be
##################################################################################################################

rm /tmp/virtual-box.deb

wget http://download.virtualbox.org/virtualbox/5.1.22/virtualbox-5.1_5.1.22-115126~Ubuntu~xenial_amd64.deb -O /tmp/virtual-box.deb

sudo dpkg -i /tmp/virtual-box.deb

rm /tmp/virtual-box.deb

##################################################################################################################

echo "################################################################"
echo "#####################     COMPLETED     ########################"
echo "################################################################"