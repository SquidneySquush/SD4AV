#!/usr/bin/env python

import rospy
import smach

class GrndInact(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['preCheckInit'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Ground Inactive')
        time.sleep(2)
        return 'preCheckInit'
