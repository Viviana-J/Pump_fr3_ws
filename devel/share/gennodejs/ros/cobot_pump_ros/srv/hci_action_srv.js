// Auto-generated. Do not edit!

// (in-package cobot_pump_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let waypoint = require('../msg/waypoint.js');

//-----------------------------------------------------------

class hci_action_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.check = null;
    }
    else {
      if (initObj.hasOwnProperty('check')) {
        this.check = initObj.check
      }
      else {
        this.check = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hci_action_srvRequest
    // Serialize message field [check]
    bufferOffset = _serializer.bool(obj.check, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hci_action_srvRequest
    let len;
    let data = new hci_action_srvRequest(null);
    // Deserialize message field [check]
    data.check = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/hci_action_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c5df00fea9d1f39520fa0345cbde1b26';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool check
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hci_action_srvRequest(null);
    if (msg.check !== undefined) {
      resolved.check = msg.check;
    }
    else {
      resolved.check = false
    }

    return resolved;
    }
};

class hci_action_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.waypoints = null;
    }
    else {
      if (initObj.hasOwnProperty('waypoints')) {
        this.waypoints = initObj.waypoints
      }
      else {
        this.waypoints = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hci_action_srvResponse
    // Serialize message field [waypoints]
    // Serialize the length for message field [waypoints]
    bufferOffset = _serializer.uint32(obj.waypoints.length, buffer, bufferOffset);
    obj.waypoints.forEach((val) => {
      bufferOffset = waypoint.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hci_action_srvResponse
    let len;
    let data = new hci_action_srvResponse(null);
    // Deserialize message field [waypoints]
    // Deserialize array length for message field [waypoints]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.waypoints = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.waypoints[i] = waypoint.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 57 * object.waypoints.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/hci_action_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c700632b90a1c5ce1f9540e757918e84';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    cobot_pump_ros/waypoint[] waypoints
    
    ================================================================================
    MSG: cobot_pump_ros/waypoint
    geometry_msgs/Pose pose
    bool franka_gripper
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
    const resolved = new hci_action_srvResponse(null);
    if (msg.waypoints !== undefined) {
      resolved.waypoints = new Array(msg.waypoints.length);
      for (let i = 0; i < resolved.waypoints.length; ++i) {
        resolved.waypoints[i] = waypoint.Resolve(msg.waypoints[i]);
      }
    }
    else {
      resolved.waypoints = []
    }

    return resolved;
    }
};

module.exports = {
  Request: hci_action_srvRequest,
  Response: hci_action_srvResponse,
  md5sum() { return '8459cc57e480624d25da434fe579e7c3'; },
  datatype() { return 'cobot_pump_ros/hci_action_srv'; }
};
