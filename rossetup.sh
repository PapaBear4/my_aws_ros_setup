#! /bin/bash 
#this script will get ROS setup and ready for use
# $wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/rossetup.sh | sudo bash

rosdep init
rosdep update
git config --global user.name "PapaBear4"
git config --global user.email "bear.sidell@gmail.com"

echo "source /opt/ros/noetic/setup.bash" >> ~/.bashrc
source ~/.bashrc

#now get the workspace set up
#make the directory of thw workspace
mkdir -p ~/tutorial_ws/src
cd ~/tutorial_ws
#initialize it so it's recognized and make it
catkin_init_workspace src
catkin_make

#source the new workspace
source devel/setup.bash

#now you're ready to go!
