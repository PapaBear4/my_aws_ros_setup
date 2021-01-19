#! /bin/bash
# this is the next step in getting set up for ROS, install browser, ros, and other tools

# copy this into the cmd line to run the script
# $wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/aws_ros_setup.sh | sudo bash

#add the ROS thing to the apt list and get the key
sh -c 'echo "deb http://packages.ros.org/ros/ubuntu $(lsb_release -sc) main" > /etc/apt/sources.list.d/ros-latest.list'
sudo apt-key adv --keyserver 'hkp://keyserver.ubuntu.com:80' --recv-key C1CF6E31E6BADE8868B172B4F42ED6FBAB17C654

#update the package list and get stuff installed (this step takes a while)
apt install firefox ros-noetic-desktop-full python3-rosdep -y
snap install code --classic
echo "Done installing ROS.  Please set your password, reboot your machine, and log in from RDP."
