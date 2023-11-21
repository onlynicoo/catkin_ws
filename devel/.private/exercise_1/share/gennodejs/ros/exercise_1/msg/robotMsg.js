// Auto-generated. Do not edit!

// (in-package exercise_1.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class robotMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.roomId = null;
      this.roomName = null;
      this.batteryLevel = null;
    }
    else {
      if (initObj.hasOwnProperty('roomId')) {
        this.roomId = initObj.roomId
      }
      else {
        this.roomId = 0;
      }
      if (initObj.hasOwnProperty('roomName')) {
        this.roomName = initObj.roomName
      }
      else {
        this.roomName = '';
      }
      if (initObj.hasOwnProperty('batteryLevel')) {
        this.batteryLevel = initObj.batteryLevel
      }
      else {
        this.batteryLevel = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type robotMsg
    // Serialize message field [roomId]
    bufferOffset = _serializer.int32(obj.roomId, buffer, bufferOffset);
    // Serialize message field [roomName]
    bufferOffset = _serializer.string(obj.roomName, buffer, bufferOffset);
    // Serialize message field [batteryLevel]
    bufferOffset = _serializer.int32(obj.batteryLevel, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type robotMsg
    let len;
    let data = new robotMsg(null);
    // Deserialize message field [roomId]
    data.roomId = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [roomName]
    data.roomName = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [batteryLevel]
    data.batteryLevel = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.roomName);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'exercise_1/robotMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '63d762d84c6d2e28546b87e174f0d422';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 roomId
    string roomName
    int32 batteryLevel
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new robotMsg(null);
    if (msg.roomId !== undefined) {
      resolved.roomId = msg.roomId;
    }
    else {
      resolved.roomId = 0
    }

    if (msg.roomName !== undefined) {
      resolved.roomName = msg.roomName;
    }
    else {
      resolved.roomName = ''
    }

    if (msg.batteryLevel !== undefined) {
      resolved.batteryLevel = msg.batteryLevel;
    }
    else {
      resolved.batteryLevel = 0
    }

    return resolved;
    }
};

module.exports = robotMsg;
