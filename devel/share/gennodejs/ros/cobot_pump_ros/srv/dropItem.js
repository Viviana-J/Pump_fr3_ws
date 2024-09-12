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

class dropItemRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.timeout_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('timeout_ms')) {
        this.timeout_ms = initObj.timeout_ms
      }
      else {
        this.timeout_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dropItemRequest
    // Serialize message field [timeout_ms]
    bufferOffset = _serializer.int64(obj.timeout_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dropItemRequest
    let len;
    let data = new dropItemRequest(null);
    // Deserialize message field [timeout_ms]
    data.timeout_ms = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/dropItemRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '1a4f6fbef558cba8844dd1016bc02a88';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 timeout_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dropItemRequest(null);
    if (msg.timeout_ms !== undefined) {
      resolved.timeout_ms = msg.timeout_ms;
    }
    else {
      resolved.timeout_ms = 0
    }

    return resolved;
    }
};

class dropItemResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type dropItemResponse
    // Serialize message field [success]
    bufferOffset = _serializer.bool(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type dropItemResponse
    let len;
    let data = new dropItemResponse(null);
    // Deserialize message field [success]
    data.success = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/dropItemResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '358e233cde0c8a8bcfea4ce193f8fc15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool success
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new dropItemResponse(null);
    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = false
    }

    return resolved;
    }
};

module.exports = {
  Request: dropItemRequest,
  Response: dropItemResponse,
  md5sum() { return '96b70f2966d4e8cb10a582cc9fbbdb44'; },
  datatype() { return 'cobot_pump_ros/dropItem'; }
};
