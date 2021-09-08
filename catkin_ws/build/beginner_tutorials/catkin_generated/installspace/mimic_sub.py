#!/usr/bin/env python2

import rospy
from turtlesim.msg import Color

def callback(TData):
    rospy.loginfo(rospy.get_caller_id() + "I heard %s", TData.color)

def subscriber():

    rospy.init_node('subscriber', anonymous=True)

    rospy.Subscriber("BColor", Color, callback)

    rospy.spin()

if __name__ == '__main__':
    subscriber()
