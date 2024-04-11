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



# In theory the below should just work...

## This isn't tested yet, but it will need to be done after sourcing the foxy distro, doing colcon build on the drone_stella_slam package, and then running the commands from the drone_stella_slam folder.

Open up 3 terminals
Terminal 1: ros2 launch realsense2_camera rs_launch.py
Terminal 2: ros2 run image_transport republish raw in:=camera/color/image_raw out:=/camera/image_raw
Terminal 2 (depth realsense): ros2 run image_transport republish raw in:=camera/depth/image_rect_raw out:=/camera/depth/image_raw
Mapping:

Terminal 3: ros2 run stella_vslam_ros run_slam -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-out map.msg
Terminal 3 (realsense): ros2 run stella_vslam_ros run_slam -v orb_vocab.fbow -c camera_config/realsense_rgbd.yaml --map-db-out map.msg
Localization:

Terminal 3: ros2 run stella_vslam_ros run_slam --disable-mapping -v orb_vocab.fbow -c camera_config/equirectangular.yaml --map-db-in map.msg
Terminal 3 (realsense): ros2 run stella_vslam_ros run_slam --disable-mapping -v orb_vocab.fbow -c camera_config/realsense_rgbd.yaml --map-db-in map.msg