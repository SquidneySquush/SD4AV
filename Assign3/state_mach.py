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


# define state Mission Configuration

