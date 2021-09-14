#!/usr/bin/env python

import rospy
import smach
import time
import random import randint

class preCheck(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['c_passed','c_failed'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Precheck')
        time.sleep(2)
        value = randint(1,10)
        rospy.loginfo('Value is %s', value)
        if (value > 9):
            return 'c_failed'
        else:
            return 'c_passed'
