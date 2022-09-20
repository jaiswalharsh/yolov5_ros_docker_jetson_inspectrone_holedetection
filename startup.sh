#xhost local:root
docker run  -it \
            --net=host \
            --gpus all \
            -v /home/biblo/containers/nvidia_container/ros_pytorch_yolov5:/workspace/catkin_ws/src/ros_pytorch_yolov5 \
	    -v /home/biblo/containers/nvidia_container/inspectrone_msgs:/workspace/catkin_ws/src/inspectrone_msgs \
            -e DISPLAY=:1 \
            -v /tmp/.X11-unix:/tmp/.X11-unix \
            l4t-ml:r32.5.0-py3 \
	    roslaunch ros_pytorch_yolov5 detector.launch
