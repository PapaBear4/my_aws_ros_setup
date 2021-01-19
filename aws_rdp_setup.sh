#! /bin/bash
# this is a setup script to be run at the initiation of an AWS instance that will get it ready to run ROS noetic
# copy this into the cmd line to run the script
# $wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/rosinstall.sh | sudo bash

#update the package list and get stuff installed (this step takes a while)
apt update
apt dist-upgrade -y
apt install xrdp cinnamon -y

echo "Done installing prepping for RDP connection.  Please set your password, reboot your machine, and log in from RDP."
