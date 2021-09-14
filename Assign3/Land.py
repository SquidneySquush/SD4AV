#!/usr/bin/env python

import rospy
import smach

class land(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['landed'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Landing')
        time.sleep(2)
        return 'landed'
