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


//-----------------------------------------------------------

class hci_action_srvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hci_action_srvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hci_action_srvRequest
    let len;
    let data = new hci_action_srvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/hci_action_srvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hci_action_srvRequest(null);
    return resolved;
    }
};

class hci_action_srvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.action = null;
    }
    else {
      if (initObj.hasOwnProperty('action')) {
        this.action = initObj.action
      }
      else {
        this.action = new Array(7).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type hci_action_srvResponse
    // Check that the constant length array field [action] has the right length
    if (obj.action.length !== 7) {
      throw new Error('Unable to serialize array field action - length must be 7')
    }
    // Serialize message field [action]
    bufferOffset = _arraySerializer.float32(obj.action, buffer, bufferOffset, 7);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type hci_action_srvResponse
    let len;
    let data = new hci_action_srvResponse(null);
    // Deserialize message field [action]
    data.action = _arrayDeserializer.float32(buffer, bufferOffset, 7)
    return data;
  }

  static getMessageSize(object) {
    return 28;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/hci_action_srvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c43a3220bfd54c72b40a7f1b9339aa4f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[7] action
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new hci_action_srvResponse(null);
    if (msg.action !== undefined) {
      resolved.action = msg.action;
    }
    else {
      resolved.action = new Array(7).fill(0)
    }

    return resolved;
    }
};

module.exports = {
  Request: hci_action_srvRequest,
  Response: hci_action_srvResponse,
  md5sum() { return 'c43a3220bfd54c72b40a7f1b9339aa4f'; },
  datatype() { return 'cobot_pump_ros/hci_action_srv'; }
};
