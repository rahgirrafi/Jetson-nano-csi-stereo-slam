#!/usr/bin/env python
import rospy
import message_filters
from sensor_msgs.msg import Image, CameraInfo
#synchronize a imx219-83 stereo camera
def callback(image_left, image_right, info_left, info_right):
    print("synchronized")
    #do something
def main():
    rospy.init_node('stereo_sync', anonymous=True)
    image_left_sub = message_filters.Subscriber('/stereo_camera/left/image_rect_color', Image)
    image_right_sub = message_filters.Subscriber('/stereo_camera/right/image_rect', Image)
    info_left_sub = message_filters.Subscriber( '/stereo_camera/left/camera_info', CameraInfo)
    info_right_sub = message_filters.Subscriber('/stereo_camera/right/camera_info', CameraInfo)
    ts = message_filters.TimeSynchronizer([image_left_sub, image_right_sub, info_left_sub, info_right_sub], 10)
    ts.registerCallback(callback)
    rospy.spin()
if __name__ == '__main__':
    main()
