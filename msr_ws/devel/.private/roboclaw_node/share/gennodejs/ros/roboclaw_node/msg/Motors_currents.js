// Auto-generated. Do not edit!

// (in-package roboclaw_node.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Motors_currents {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.motor1 = null;
      this.motor2 = null;
    }
    else {
      if (initObj.hasOwnProperty('motor1')) {
        this.motor1 = initObj.motor1
      }
      else {
        this.motor1 = 0.0;
      }
      if (initObj.hasOwnProperty('motor2')) {
        this.motor2 = initObj.motor2
      }
      else {
        this.motor2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Motors_currents
    // Serialize message field [motor1]
    bufferOffset = _serializer.float32(obj.motor1, buffer, bufferOffset);
    // Serialize message field [motor2]
    bufferOffset = _serializer.float32(obj.motor2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Motors_currents
    let len;
    let data = new Motors_currents(null);
    // Deserialize message field [motor1]
    data.motor1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [motor2]
    data.motor2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboclaw_node/Motors_currents';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'f6918c176d50f7c79727fec6589a04c7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 motor1
    float32 motor2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Motors_currents(null);
    if (msg.motor1 !== undefined) {
      resolved.motor1 = msg.motor1;
    }
    else {
      resolved.motor1 = 0.0
    }

    if (msg.motor2 !== undefined) {
      resolved.motor2 = msg.motor2;
    }
    else {
      resolved.motor2 = 0.0
    }

    return resolved;
    }
};

module.exports = Motors_currents;
