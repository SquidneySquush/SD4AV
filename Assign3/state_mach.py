#!/usr/bin/env python

import rospy
import smach

from Assign3.MissionConfiguration import MissConfig
from Assign3.OnGroundAndInactive import GrndInact
from Assign3.PreflightChecks import preCheck
from Assign3.Standby import Standby
from Assign3.Arming import Arm
from Assign3.Takingoff import takeoff
from Assign3.Circle import circle
from Assign3.ReturnHome import RHome
from Assign3.Land import land
from Assign3.Disarming import disarm


# main
def main():

    rospy.init_node('smach_turtle_dance')

    # Create a SMACH state machine
    sm = smach.StateMachine(outcomes=['do_exit'])

    # Open the container
    with sm:
        # Add states to the container
        smach.StateMachine.add('MissConfig', MissConfig(), 
                               transitions={'ConfigComp':'GrndInact'})
        smach.StateMachine.add('GrndInact', GrndInact(), 
                                transitions={'preCheckInit':'preCheck'})
        smach.StateMachine.add('preCheck', preCheck(), 
                               transitions={'c_passed':'Standby','c_failed':'GrndInact'})
        smach.StateMachine.add('Standby', Standby(), 
                               transitions={'rec_launch':'Arm'})
        smach.StateMachine.add('Arm', Arm(), 
                               transitions={'Armed':'takeoff','Arm_failed':'GrndInact'})
        smach.StateMachine.add('takeoff', takeoff(), 
                               transitions={'takeoff_abort':'land','alt_reach':'circle'})
        smach.StateMachine.add('circle', circle(), 
                               transitions={'recalled':'RHome'})
        smach.StateMachine.add('RHome', RHome(), 
                               transitions={'reach_home':'land'})
        smach.StateMachine.add('land', land(), 
                               transitions={'landed':'disarm'})
        smach.StateMachine.add('disarm', disarm(), 
                               transitions={'disarmed':'GrndInact'})


    # Execute SMACH plan
    outcome = sm.execute()


if __name__ == '__main__':
    main()
