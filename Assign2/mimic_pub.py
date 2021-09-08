#!/usr/bin/env python

import rospy
from turtlesim.msg import Color

def BColor():
    
    rospy.init_node('BColor', anonymous=True)
    clr_pub = rospy.Publisher('/turtlesim/turtle1/color_sensor', Color, queue_size= 10)
    #rospy.myargv(argv=sys.argv)

    my_msg = Color()
    # each value should be between 0 and 255
    print("The following values should be between 0 to 255.\n")
    red = input("Input your red value:")
    blue = input("Input your blue value:")
    green = input("Input your green value:")#Input True/False

    while not rospy.is_shutdown():
        my_msg.r = red
        my_msg.b = blue
        my_msg.g = green
        
        # Publish the background color of turtle1
        clr_pub.publish(my_msg)


if __name__ == '__main__':
    try:
        BColor()
    except rospy.ROSInterruptException:
        pass
