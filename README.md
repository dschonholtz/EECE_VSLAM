# EECE_VSLAM
This uses StellaSLAM to build 3d maps of an environment for a drone.
Do this stuff:
https://chat.openai.com/share/d1563399-f824-4829-9f36-a67f7969c753

## Getting Started
Do the makefile pip set up stuff.
Install ROS Foxy.

You should be able to just run

`colcon build --packages-select drone_stella_slam`
`source foxy_ws/install/setup.bash`
<!-- Most of the install logic comes from the NUAV https://github.com/NEU-Project-MOTION/MOTION-STELLA-VSLAM/blob/main/README.md 

However, we made our own version of it to make sure we could set up our own version for other arbitrary systems as needed.
-->

`./scripts/InstallStella.sh`