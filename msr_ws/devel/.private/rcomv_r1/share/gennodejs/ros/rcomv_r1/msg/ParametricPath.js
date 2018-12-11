// Auto-generated. Do not edit!

// (in-package rcomv_r1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ParametricPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_type = null;
      this.xc = null;
      this.yc = null;
      this.wd = null;
      this.R = null;
      this.R1 = null;
      this.R2 = null;
    }
    else {
      if (initObj.hasOwnProperty('path_type')) {
        this.path_type = initObj.path_type
      }
      else {
        this.path_type = '';
      }
      if (initObj.hasOwnProperty('xc')) {
        this.xc = initObj.xc
      }
      else {
        this.xc = 0.0;
      }
      if (initObj.hasOwnProperty('yc')) {
        this.yc = initObj.yc
      }
      else {
        this.yc = 0.0;
      }
      if (initObj.hasOwnProperty('wd')) {
        this.wd = initObj.wd
      }
      else {
        this.wd = 0.0;
      }
      if (initObj.hasOwnProperty('R')) {
        this.R = initObj.R
      }
      else {
        this.R = 0.0;
      }
      if (initObj.hasOwnProperty('R1')) {
        this.R1 = initObj.R1
      }
      else {
        this.R1 = 0.0;
      }
      if (initObj.hasOwnProperty('R2')) {
        this.R2 = initObj.R2
      }
      else {
        this.R2 = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ParametricPath
    // Serialize message field [path_type]
    bufferOffset = _serializer.string(obj.path_type, buffer, bufferOffset);
    // Serialize message field [xc]
    bufferOffset = _serializer.float64(obj.xc, buffer, bufferOffset);
    // Serialize message field [yc]
    bufferOffset = _serializer.float64(obj.yc, buffer, bufferOffset);
    // Serialize message field [wd]
    bufferOffset = _serializer.float64(obj.wd, buffer, bufferOffset);
    // Serialize message field [R]
    bufferOffset = _serializer.float64(obj.R, buffer, bufferOffset);
    // Serialize message field [R1]
    bufferOffset = _serializer.float64(obj.R1, buffer, bufferOffset);
    // Serialize message field [R2]
    bufferOffset = _serializer.float64(obj.R2, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ParametricPath
    let len;
    let data = new ParametricPath(null);
    // Deserialize message field [path_type]
    data.path_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [xc]
    data.xc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [yc]
    data.yc = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [wd]
    data.wd = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R]
    data.R = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R1]
    data.R1 = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [R2]
    data.R2 = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path_type.length;
    return length + 52;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rcomv_r1/ParametricPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c6ff66e71430612759900cc362de36d1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Parametric Path/Trajectory Data Type.
    # This is used for defining a trajectory using parametric equations
    
    # path type
    string path_type
    
    # center location
    float64 xc
    float64 yc
    
    # angular frequency
    float64 wd
    
    # Radius for the circular path
    float64 R
    
    # Radius for the eight-shaped path
    float64 R1
    float64 R2
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ParametricPath(null);
    if (msg.path_type !== undefined) {
      resolved.path_type = msg.path_type;
    }
    else {
      resolved.path_type = ''
    }

    if (msg.xc !== undefined) {
      resolved.xc = msg.xc;
    }
    else {
      resolved.xc = 0.0
    }

    if (msg.yc !== undefined) {
      resolved.yc = msg.yc;
    }
    else {
      resolved.yc = 0.0
    }

    if (msg.wd !== undefined) {
      resolved.wd = msg.wd;
    }
    else {
      resolved.wd = 0.0
    }

    if (msg.R !== undefined) {
      resolved.R = msg.R;
    }
    else {
      resolved.R = 0.0
    }

    if (msg.R1 !== undefined) {
      resolved.R1 = msg.R1;
    }
    else {
      resolved.R1 = 0.0
    }

    if (msg.R2 !== undefined) {
      resolved.R2 = msg.R2;
    }
    else {
      resolved.R2 = 0.0
    }

    return resolved;
    }
};

module.exports = ParametricPath;
