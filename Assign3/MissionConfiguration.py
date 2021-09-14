#!/usr/bin/env python




import rospy
import smach

# define state Mission Configuration
class MissConfig(smach.State):
    def __init__(self, outcomes=['ConfigComp']):
    #State Initialization

    def execute(self, userdata):
        return 'ConfigComp'





#def main():
    #rospy.init_node('Mission COnfiguration')

    # Create a SMACH state machine
    #sm0 = smach.StateMachine(outcomes=['On Ground and Inactive'])

    # Open the container
    #with sm0:
    #    pass

    # Execute SMACH tree
    #outcome = sm0.execute()

    # Signal ROS shutdown (kill threads in background)
    #rospy.signal_shutdown('All done.')

#if __name__ == '__main__':
#    main()
