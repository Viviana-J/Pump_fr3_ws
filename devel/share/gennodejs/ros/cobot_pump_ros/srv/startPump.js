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

class startPumpRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pressure = null;
      this.timeout_ms = null;
    }
    else {
      if (initObj.hasOwnProperty('pressure')) {
        this.pressure = initObj.pressure
      }
      else {
        this.pressure = 0;
      }
      if (initObj.hasOwnProperty('timeout_ms')) {
        this.timeout_ms = initObj.timeout_ms
      }
      else {
        this.timeout_ms = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startPumpRequest
    // Serialize message field [pressure]
    bufferOffset = _serializer.int64(obj.pressure, buffer, bufferOffset);
    // Serialize message field [timeout_ms]
    bufferOffset = _serializer.int64(obj.timeout_ms, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startPumpRequest
    let len;
    let data = new startPumpRequest(null);
    // Deserialize message field [pressure]
    data.pressure = _deserializer.int64(buffer, bufferOffset);
    // Deserialize message field [timeout_ms]
    data.timeout_ms = _deserializer.int64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/startPumpRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f97f988ddf10dd11a71036788a3bd9fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 pressure
    int64 timeout_ms
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startPumpRequest(null);
    if (msg.pressure !== undefined) {
      resolved.pressure = msg.pressure;
    }
    else {
      resolved.pressure = 0
    }

    if (msg.timeout_ms !== undefined) {
      resolved.timeout_ms = msg.timeout_ms;
    }
    else {
      resolved.timeout_ms = 0
    }

    return resolved;
    }
};

class startPumpResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.vacuumSuccess = null;
    }
    else {
      if (initObj.hasOwnProperty('vacuumSuccess')) {
        this.vacuumSuccess = initObj.vacuumSuccess
      }
      else {
        this.vacuumSuccess = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type startPumpResponse
    // Serialize message field [vacuumSuccess]
    bufferOffset = _serializer.bool(obj.vacuumSuccess, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type startPumpResponse
    let len;
    let data = new startPumpResponse(null);
    // Deserialize message field [vacuumSuccess]
    data.vacuumSuccess = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 1;
  }

  static datatype() {
    // Returns string type for a service object
    return 'cobot_pump_ros/startPumpResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '0151a92fc5ce31e361ba616ee5a3609f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    bool vacuumSuccess
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new startPumpResponse(null);
    if (msg.vacuumSuccess !== undefined) {
      resolved.vacuumSuccess = msg.vacuumSuccess;
    }
    else {
      resolved.vacuumSuccess = false
    }

    return resolved;
    }
};

module.exports = {
  Request: startPumpRequest,
  Response: startPumpResponse,
  md5sum() { return 'b8c827af12d71a112960417ecae897bc'; },
  datatype() { return 'cobot_pump_ros/startPump'; }
};
