
#!/usr/bin/env python

import rospy
import smach

class Standby(smach.State):
    def __init__(self):
        smach.State.__init__(self, outcomes=['rec_launch'])
        self.counter = 0

    def execute(self, userdata):
        rospy.loginfo('Standby')
        time.sleep(2)
        return 'rec_launch'
