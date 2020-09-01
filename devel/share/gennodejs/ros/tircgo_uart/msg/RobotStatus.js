// Auto-generated. Do not edit!

// (in-package tircgo_uart.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Tracking_status_reply = require('./Tracking_status_reply.js');
let Lidar_level_reply = require('./Lidar_level_reply.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class RobotStatus {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.is_activated = null;
      this.now_mode = null;
      this.tracking_status_reply = null;
      this.lidar_level_reply = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('is_activated')) {
        this.is_activated = initObj.is_activated
      }
      else {
        this.is_activated = false;
      }
      if (initObj.hasOwnProperty('now_mode')) {
        this.now_mode = initObj.now_mode
      }
      else {
        this.now_mode = 0;
      }
      if (initObj.hasOwnProperty('tracking_status_reply')) {
        this.tracking_status_reply = initObj.tracking_status_reply
      }
      else {
        this.tracking_status_reply = new Tracking_status_reply();
      }
      if (initObj.hasOwnProperty('lidar_level_reply')) {
        this.lidar_level_reply = initObj.lidar_level_reply
      }
      else {
        this.lidar_level_reply = new Lidar_level_reply();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotStatus
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [is_activated]
    bufferOffset = _serializer.bool(obj.is_activated, buffer, bufferOffset);
    // Serialize message field [now_mode]
    bufferOffset = _serializer.int16(obj.now_mode, buffer, bufferOffset);
    // Serialize message field [tracking_status_reply]
    bufferOffset = Tracking_status_reply.serialize(obj.tracking_status_reply, buffer, bufferOffset);
    // Serialize message field [lidar_level_reply]
    bufferOffset = Lidar_level_reply.serialize(obj.lidar_level_reply, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotStatus
    let len;
    let data = new RobotStatus(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [is_activated]
    data.is_activated = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [now_mode]
    data.now_mode = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [tracking_status_reply]
    data.tracking_status_reply = Tracking_status_reply.deserialize(buffer, bufferOffset);
    // Deserialize message field [lidar_level_reply]
    data.lidar_level_reply = Lidar_level_reply.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += Tracking_status_reply.getMessageSize(object.tracking_status_reply);
    length += Lidar_level_reply.getMessageSize(object.lidar_level_reply);
    return length + 3;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tircgo_uart/RobotStatus';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '724d9103467732d3b906abe0e2db04e9';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    std_msgs/Header header
    bool is_activated
    int16 now_mode
    tircgo_uart/Tracking_status_reply tracking_status_reply
    tircgo_uart/Lidar_level_reply lidar_level_reply
    
    
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
    
    ================================================================================
    MSG: tircgo_uart/Tracking_status_reply
    std_msgs/Header header
    bool is_legal_op
    bool is_activated
    int16 error_code
    int16 reply
    
    ================================================================================
    MSG: tircgo_uart/Lidar_level_reply
    std_msgs/Header header
    bool is_legal_op
    bool is_activated
    int16 error_code
    int16[] level_reply
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotStatus(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.is_activated !== undefined) {
      resolved.is_activated = msg.is_activated;
    }
    else {
      resolved.is_activated = false
    }

    if (msg.now_mode !== undefined) {
      resolved.now_mode = msg.now_mode;
    }
    else {
      resolved.now_mode = 0
    }

    if (msg.tracking_status_reply !== undefined) {
      resolved.tracking_status_reply = Tracking_status_reply.Resolve(msg.tracking_status_reply)
    }
    else {
      resolved.tracking_status_reply = new Tracking_status_reply()
    }

    if (msg.lidar_level_reply !== undefined) {
      resolved.lidar_level_reply = Lidar_level_reply.Resolve(msg.lidar_level_reply)
    }
    else {
      resolved.lidar_level_reply = new Lidar_level_reply()
    }

    return resolved;
    }
};

module.exports = RobotStatus;
