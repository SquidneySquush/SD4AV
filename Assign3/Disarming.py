#!/usr/bin/env python

import rospy
import threading
import smach

class disarm(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['disarmed'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Disarming')
        time.sleep(2)
        return 'disarmed'
