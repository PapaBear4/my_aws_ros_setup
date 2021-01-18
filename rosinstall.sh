#! /bin/bash
# this is a setup script to be run at the initiation of an AWS instance that will get it ready to run ROS noetic
# cp this into the cmd line to run the script
# $wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/rosinstall.sh | sudo bash

#first, set your user password so you can log in via RDP once all this is done
#passwd ubuntu

#add the ROS thing to the apt list and get the key
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

#update the package list and get stuff installed (this step takes a while)
apt update
apt dist-upgrade -y
apt install xrdp cinnamon firefox ros-noetic-desktop-full python3-rosdep -y
echo "done setting up"
