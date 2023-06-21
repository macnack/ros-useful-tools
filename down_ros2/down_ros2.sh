#!/bin/bash

pkill ros2
pkill rviz2
ps aux | grep python3 | grep ros2 | grep -v grep | awk '{ print "kill ", $2 }' | sh
ps aux | grep component_container | grep -v grep | awk '{ print "kill ", $2 }' | sh
ps aux | grep robot_state_publisher | grep -v grep | awk '{ print "kill ", $2 }' | sh
ps aux | grep "ros-args" | grep -v grep | awk '{ print "kill ", $2 }' | sh
ros2 daemon stop
