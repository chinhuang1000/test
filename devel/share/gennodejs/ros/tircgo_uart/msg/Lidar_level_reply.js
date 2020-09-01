// Auto-generated. Do not edit!

// (in-package tircgo_uart.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Lidar_level_reply {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_legal_op = null;
      this.is_activated = null;
      this.error_code = null;
      this.level_reply = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_legal_op')) {
        this.is_legal_op = initObj.is_legal_op
      }
      else {
        this.is_legal_op = false;
      }
      if (initObj.hasOwnProperty('is_activated')) {
        this.is_activated = initObj.is_activated
      }
      else {
        this.is_activated = false;
      }
      if (initObj.hasOwnProperty('error_code')) {
        this.error_code = initObj.error_code
      }
      else {
        this.error_code = 0;
      }
      if (initObj.hasOwnProperty('level_reply')) {
        this.level_reply = initObj.level_reply
      }
      else {
        this.level_reply = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Lidar_level_reply
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_legal_op]
    bufferOffset = _serializer.bool(obj.is_legal_op, buffer, bufferOffset);
    // Serialize message field [is_activated]
    bufferOffset = _serializer.bool(obj.is_activated, buffer, bufferOffset);
    // Serialize message field [error_code]
    bufferOffset = _serializer.int16(obj.error_code, buffer, bufferOffset);
    // Serialize message field [level_reply]
    bufferOffset = _arraySerializer.int16(obj.level_reply, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Lidar_level_reply
    let len;
    let data = new Lidar_level_reply(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_legal_op]
    data.is_legal_op = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [is_activated]
    data.is_activated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [error_code]
    data.error_code = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [level_reply]
    data.level_reply = _arrayDeserializer.int16(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 2 * object.level_reply.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tircgo_uart/Lidar_level_reply';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7aa95d61bc2cb196568e05ff123f7f43';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool is_legal_op
    bool is_activated
    int16 error_code
    int16[] level_reply
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Lidar_level_reply(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_legal_op !== undefined) {
      resolved.is_legal_op = msg.is_legal_op;
    }
    else {
      resolved.is_legal_op = false
    }

    if (msg.is_activated !== undefined) {
      resolved.is_activated = msg.is_activated;
    }
    else {
      resolved.is_activated = false
    }

    if (msg.error_code !== undefined) {
      resolved.error_code = msg.error_code;
    }
    else {
      resolved.error_code = 0
    }

    if (msg.level_reply !== undefined) {
      resolved.level_reply = msg.level_reply;
    }
    else {
      resolved.level_reply = []
    }

    return resolved;
    }
};

module.exports = Lidar_level_reply;
