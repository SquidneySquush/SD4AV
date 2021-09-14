#!/usr/bin/env python

import rospy
import smach
import time
import random import randint

class Arm(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['Armed','Arm_failed'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Arming')
        time.sleep(2)
        value = randint(1,10)
        rospy.loginfo('Value is %s', value)
        if (value > 9):
            return 'Arm_failed'
        else:
            return 'Armed'
