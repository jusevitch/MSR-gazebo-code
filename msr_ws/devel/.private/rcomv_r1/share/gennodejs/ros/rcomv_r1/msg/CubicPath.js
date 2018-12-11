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

class CubicPath {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.path_type = null;
      this.qi_x = null;
      this.qi_y = null;
      this.qi_theta = null;
      this.qf_x = null;
      this.qf_y = null;
      this.qf_theta = null;
      this.T = null;
      this.poly_k = null;
    }
    else {
      if (initObj.hasOwnProperty('path_type')) {
        this.path_type = initObj.path_type
      }
      else {
        this.path_type = '';
      }
      if (initObj.hasOwnProperty('qi_x')) {
        this.qi_x = initObj.qi_x
      }
      else {
        this.qi_x = 0.0;
      }
      if (initObj.hasOwnProperty('qi_y')) {
        this.qi_y = initObj.qi_y
      }
      else {
        this.qi_y = 0.0;
      }
      if (initObj.hasOwnProperty('qi_theta')) {
        this.qi_theta = initObj.qi_theta
      }
      else {
        this.qi_theta = 0.0;
      }
      if (initObj.hasOwnProperty('qf_x')) {
        this.qf_x = initObj.qf_x
      }
      else {
        this.qf_x = 0.0;
      }
      if (initObj.hasOwnProperty('qf_y')) {
        this.qf_y = initObj.qf_y
      }
      else {
        this.qf_y = 0.0;
      }
      if (initObj.hasOwnProperty('qf_theta')) {
        this.qf_theta = initObj.qf_theta
      }
      else {
        this.qf_theta = 0.0;
      }
      if (initObj.hasOwnProperty('T')) {
        this.T = initObj.T
      }
      else {
        this.T = 0.0;
      }
      if (initObj.hasOwnProperty('poly_k')) {
        this.poly_k = initObj.poly_k
      }
      else {
        this.poly_k = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CubicPath
    // Serialize message field [path_type]
    bufferOffset = _serializer.string(obj.path_type, buffer, bufferOffset);
    // Serialize message field [qi_x]
    bufferOffset = _serializer.float64(obj.qi_x, buffer, bufferOffset);
    // Serialize message field [qi_y]
    bufferOffset = _serializer.float64(obj.qi_y, buffer, bufferOffset);
    // Serialize message field [qi_theta]
    bufferOffset = _serializer.float64(obj.qi_theta, buffer, bufferOffset);
    // Serialize message field [qf_x]
    bufferOffset = _serializer.float64(obj.qf_x, buffer, bufferOffset);
    // Serialize message field [qf_y]
    bufferOffset = _serializer.float64(obj.qf_y, buffer, bufferOffset);
    // Serialize message field [qf_theta]
    bufferOffset = _serializer.float64(obj.qf_theta, buffer, bufferOffset);
    // Serialize message field [T]
    bufferOffset = _serializer.float64(obj.T, buffer, bufferOffset);
    // Serialize message field [poly_k]
    bufferOffset = _serializer.float64(obj.poly_k, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CubicPath
    let len;
    let data = new CubicPath(null);
    // Deserialize message field [path_type]
    data.path_type = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [qi_x]
    data.qi_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qi_y]
    data.qi_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qi_theta]
    data.qi_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qf_x]
    data.qf_x = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qf_y]
    data.qf_y = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [qf_theta]
    data.qf_theta = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [T]
    data.T = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [poly_k]
    data.poly_k = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.path_type.length;
    return length + 68;
  }

  static datatype() {
    // Returns string type for a message object
    return 'rcomv_r1/CubicPath';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fd1af34fecb10a7d71d4740943397d74';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The Cubic Polynomials Path/Trajectory Data Type.
    # This is used for defining a trajectory using cubic polynomials equations
    
    # path type
    string path_type
    
    # inital location
    float64 qi_x
    float64 qi_y
    float64 qi_theta
    
    # final location
    float64 qf_x
    float64 qf_y
    float64 qf_theta
    
    # total travel time
    float64 T
    
    # cubic polynomial parameter
    float64 poly_k
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CubicPath(null);
    if (msg.path_type !== undefined) {
      resolved.path_type = msg.path_type;
    }
    else {
      resolved.path_type = ''
    }

    if (msg.qi_x !== undefined) {
      resolved.qi_x = msg.qi_x;
    }
    else {
      resolved.qi_x = 0.0
    }

    if (msg.qi_y !== undefined) {
      resolved.qi_y = msg.qi_y;
    }
    else {
      resolved.qi_y = 0.0
    }

    if (msg.qi_theta !== undefined) {
      resolved.qi_theta = msg.qi_theta;
    }
    else {
      resolved.qi_theta = 0.0
    }

    if (msg.qf_x !== undefined) {
      resolved.qf_x = msg.qf_x;
    }
    else {
      resolved.qf_x = 0.0
    }

    if (msg.qf_y !== undefined) {
      resolved.qf_y = msg.qf_y;
    }
    else {
      resolved.qf_y = 0.0
    }

    if (msg.qf_theta !== undefined) {
      resolved.qf_theta = msg.qf_theta;
    }
    else {
      resolved.qf_theta = 0.0
    }

    if (msg.T !== undefined) {
      resolved.T = msg.T;
    }
    else {
      resolved.T = 0.0
    }

    if (msg.poly_k !== undefined) {
      resolved.poly_k = msg.poly_k;
    }
    else {
      resolved.poly_k = 0.0
    }

    return resolved;
    }
};

module.exports = CubicPath;
