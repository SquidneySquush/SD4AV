#!/usr/bin/env python

import rospy
import smach

class takeoff(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['alt_reach','takeoff_abort'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Takeoff')
        time.sleep(2)
        value = randint(1,10)
        rospy.loginfo('Value is %s', value)
        if (value > 9):
            return 'takeoff_abort'
        else:
            return 'alt_reach'
