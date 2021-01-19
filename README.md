# my_aws_ros_setup
This is a set up shell scripts to run on a new AWS machine to get it all set up for ROS

passwd ubuntu
wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/rosinstall.sh | sudo bash

wget -O - https://raw.githubusercontent.com/PapaBear4/my_aws_ros_setup/main/rossetup.sh | sudo bash

Generally speaking, once the software is all installed, the next steps are
create a workspace
mkdir -p workspace_name/src
cd workspace_name
catkin_make

that's the base workspace
the cmake file needs to be updated when you add packages (I think?)

then use catkin_create_pkg package_name depends1 depends2 and_so_on
update package.xml
back to the workspace dir and catkin_make again
