// Auto-generated. Do not edit!

// (in-package mushr_coordination.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class GoalPoseArray {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.scale = null;
      this.minx = null;
      this.miny = null;
      this.maxx = null;
      this.maxy = null;
      this.goals = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('scale')) {
        this.scale = initObj.scale
      }
      else {
        this.scale = 0.0;
      }
      if (initObj.hasOwnProperty('minx')) {
        this.minx = initObj.minx
      }
      else {
        this.minx = 0.0;
      }
      if (initObj.hasOwnProperty('miny')) {
        this.miny = initObj.miny
      }
      else {
        this.miny = 0.0;
      }
      if (initObj.hasOwnProperty('maxx')) {
        this.maxx = initObj.maxx
      }
      else {
        this.maxx = 0.0;
      }
      if (initObj.hasOwnProperty('maxy')) {
        this.maxy = initObj.maxy
      }
      else {
        this.maxy = 0.0;
      }
      if (initObj.hasOwnProperty('goals')) {
        this.goals = initObj.goals
      }
      else {
        this.goals = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type GoalPoseArray
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [scale]
    bufferOffset = _serializer.float64(obj.scale, buffer, bufferOffset);
    // Serialize message field [minx]
    bufferOffset = _serializer.float64(obj.minx, buffer, bufferOffset);
    // Serialize message field [miny]
    bufferOffset = _serializer.float64(obj.miny, buffer, bufferOffset);
    // Serialize message field [maxx]
    bufferOffset = _serializer.float64(obj.maxx, buffer, bufferOffset);
    // Serialize message field [maxy]
    bufferOffset = _serializer.float64(obj.maxy, buffer, bufferOffset);
    // Serialize message field [goals]
    // Serialize the length for message field [goals]
    bufferOffset = _serializer.uint32(obj.goals.length, buffer, bufferOffset);
    obj.goals.forEach((val) => {
      bufferOffset = geometry_msgs.msg.PoseArray.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type GoalPoseArray
    let len;
    let data = new GoalPoseArray(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [scale]
    data.scale = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [minx]
    data.minx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [miny]
    data.miny = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxx]
    data.maxx = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [maxy]
    data.maxy = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goals]
    // Deserialize array length for message field [goals]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.goals = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.goals[i] = geometry_msgs.msg.PoseArray.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.goals.forEach((val) => {
      length += geometry_msgs.msg.PoseArray.getMessageSize(val);
    });
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'mushr_coordination/GoalPoseArray';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '78e0bbacea7802e400e4e187b7b7763b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    float64 scale
    float64 minx
    float64 miny
    float64 maxx
    float64 maxy
    geometry_msgs/PoseArray[] goals
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: geometry_msgs/PoseArray
    # An array of poses with a header for global reference.
    
    Header header
    
    Pose[] poses
    
    ================================================================================
    MSG: geometry_msgs/Pose
    # A representation of pose in free space, composed of position and orientation. 
    Point position
    Quaternion orientation
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: geometry_msgs/Quaternion
    # This represents an orientation in free space in quaternion form.
    
    float64 x
    float64 y
    float64 z
    float64 w
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new GoalPoseArray(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.scale !== undefined) {
      resolved.scale = msg.scale;
    }
    else {
      resolved.scale = 0.0
    }

    if (msg.minx !== undefined) {
      resolved.minx = msg.minx;
    }
    else {
      resolved.minx = 0.0
    }

    if (msg.miny !== undefined) {
      resolved.miny = msg.miny;
    }
    else {
      resolved.miny = 0.0
    }

    if (msg.maxx !== undefined) {
      resolved.maxx = msg.maxx;
    }
    else {
      resolved.maxx = 0.0
    }

    if (msg.maxy !== undefined) {
      resolved.maxy = msg.maxy;
    }
    else {
      resolved.maxy = 0.0
    }

    if (msg.goals !== undefined) {
      resolved.goals = new Array(msg.goals.length);
      for (let i = 0; i < resolved.goals.length; ++i) {
        resolved.goals[i] = geometry_msgs.msg.PoseArray.Resolve(msg.goals[i]);
      }
    }
    else {
      resolved.goals = []
    }

    return resolved;
    }
};

module.exports = GoalPoseArray;
