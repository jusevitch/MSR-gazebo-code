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

class Wheels_speeds {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.wheel1 = null;
      this.wheel2 = null;
    }
    else {
      if (initObj.hasOwnProperty('wheel1')) {
        this.wheel1 = initObj.wheel1
      }
      else {
        this.wheel1 = 0.0;
      }
      if (initObj.hasOwnProperty('wheel2')) {
        this.wheel2 = initObj.wheel2
      }
      else {
        this.wheel2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Wheels_speeds
    // Serialize message field [wheel1]
    bufferOffset = _serializer.float32(obj.wheel1, buffer, bufferOffset);
    // Serialize message field [wheel2]
    bufferOffset = _serializer.float32(obj.wheel2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Wheels_speeds
    let len;
    let data = new Wheels_speeds(null);
    // Deserialize message field [wheel1]
    data.wheel1 = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [wheel2]
    data.wheel2 = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'roboclaw_node/Wheels_speeds';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '2108b8f789e1bd68070c8a00d7676194';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 wheel1
    float32 wheel2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Wheels_speeds(null);
    if (msg.wheel1 !== undefined) {
      resolved.wheel1 = msg.wheel1;
    }
    else {
      resolved.wheel1 = 0.0
    }

    if (msg.wheel2 !== undefined) {
      resolved.wheel2 = msg.wheel2;
    }
    else {
      resolved.wheel2 = 0.0
    }

    return resolved;
    }
};

module.exports = Wheels_speeds;
