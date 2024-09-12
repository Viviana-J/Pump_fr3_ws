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

class readStateRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type readStateRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type readStateRequest
    let len;
    let data = new readStateRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/readStateRequest';
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
    const resolved = new readStateRequest(null);
    return resolved;
    }
};

class readStateResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.itemAttached = null;
    }
    else {
      if (initObj.hasOwnProperty('itemAttached')) {
        this.itemAttached = initObj.itemAttached
      }
      else {
        this.itemAttached = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type readStateResponse
    // Serialize message field [itemAttached]
    bufferOffset = _serializer.bool(obj.itemAttached, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type readStateResponse
    let len;
    let data = new readStateResponse(null);
    // Deserialize message field [itemAttached]
    data.itemAttached = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/readStateResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '247832619fa5dc1b609564c0b8dfd0c8';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool itemAttached
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new readStateResponse(null);
    if (msg.itemAttached !== undefined) {
      resolved.itemAttached = msg.itemAttached;
    }
    else {
      resolved.itemAttached = false
    }

    return resolved;
    }
};

module.exports = {
  Request: readStateRequest,
  Response: readStateResponse,
  md5sum() { return '247832619fa5dc1b609564c0b8dfd0c8'; },
  datatype() { return 'cobot_pump_ros/readState'; }
};
