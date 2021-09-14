#!/usr/bin/env python

import rospy
import smach

class land(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['reach_home'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Return Home')
        time.sleep(2)
        return 'reach_home'
