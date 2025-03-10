// Auto-generated. Do not edit!

// (in-package tracking_module.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class DetectedObject {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sample_token = null;
      this.translation = null;
      this.size = null;
      this.rotation = null;
      this.velocity = null;
      this.detection_name = null;
      this.detection_score = null;
      this.attribute_name = null;
    }
    else {
      if (initObj.hasOwnProperty('sample_token')) {
        this.sample_token = initObj.sample_token
      }
      else {
        this.sample_token = '';
      }
      if (initObj.hasOwnProperty('translation')) {
        this.translation = initObj.translation
      }
      else {
        this.translation = [];
      }
      if (initObj.hasOwnProperty('size')) {
        this.size = initObj.size
      }
      else {
        this.size = [];
      }
      if (initObj.hasOwnProperty('rotation')) {
        this.rotation = initObj.rotation
      }
      else {
        this.rotation = [];
      }
      if (initObj.hasOwnProperty('velocity')) {
        this.velocity = initObj.velocity
      }
      else {
        this.velocity = [];
      }
      if (initObj.hasOwnProperty('detection_name')) {
        this.detection_name = initObj.detection_name
      }
      else {
        this.detection_name = '';
      }
      if (initObj.hasOwnProperty('detection_score')) {
        this.detection_score = initObj.detection_score
      }
      else {
        this.detection_score = 0.0;
      }
      if (initObj.hasOwnProperty('attribute_name')) {
        this.attribute_name = initObj.attribute_name
      }
      else {
        this.attribute_name = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DetectedObject
    // Serialize message field [sample_token]
    bufferOffset = _serializer.string(obj.sample_token, buffer, bufferOffset);
    // Serialize message field [translation]
    bufferOffset = _arraySerializer.float64(obj.translation, buffer, bufferOffset, null);
    // Serialize message field [size]
    bufferOffset = _arraySerializer.float64(obj.size, buffer, bufferOffset, null);
    // Serialize message field [rotation]
    bufferOffset = _arraySerializer.float64(obj.rotation, buffer, bufferOffset, null);
    // Serialize message field [velocity]
    bufferOffset = _arraySerializer.float64(obj.velocity, buffer, bufferOffset, null);
    // Serialize message field [detection_name]
    bufferOffset = _serializer.string(obj.detection_name, buffer, bufferOffset);
    // Serialize message field [detection_score]
    bufferOffset = _serializer.float64(obj.detection_score, buffer, bufferOffset);
    // Serialize message field [attribute_name]
    bufferOffset = _serializer.string(obj.attribute_name, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DetectedObject
    let len;
    let data = new DetectedObject(null);
    // Deserialize message field [sample_token]
    data.sample_token = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [translation]
    data.translation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [size]
    data.size = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [rotation]
    data.rotation = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [velocity]
    data.velocity = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [detection_name]
    data.detection_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [detection_score]
    data.detection_score = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [attribute_name]
    data.attribute_name = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sample_token);
    length += 8 * object.translation.length;
    length += 8 * object.size.length;
    length += 8 * object.rotation.length;
    length += 8 * object.velocity.length;
    length += _getByteLength(object.detection_name);
    length += _getByteLength(object.attribute_name);
    return length + 36;
  }

  static datatype() {
    // Returns string type for a message object
    return 'tracking_module/DetectedObject';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8ca01a6aa65060b095be04c7e327b426';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sample_token
    float64[] translation
    float64[] size
    float64[] rotation
    float64[] velocity
    string detection_name
    float64 detection_score
    string attribute_name
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DetectedObject(null);
    if (msg.sample_token !== undefined) {
      resolved.sample_token = msg.sample_token;
    }
    else {
      resolved.sample_token = ''
    }

    if (msg.translation !== undefined) {
      resolved.translation = msg.translation;
    }
    else {
      resolved.translation = []
    }

    if (msg.size !== undefined) {
      resolved.size = msg.size;
    }
    else {
      resolved.size = []
    }

    if (msg.rotation !== undefined) {
      resolved.rotation = msg.rotation;
    }
    else {
      resolved.rotation = []
    }

    if (msg.velocity !== undefined) {
      resolved.velocity = msg.velocity;
    }
    else {
      resolved.velocity = []
    }

    if (msg.detection_name !== undefined) {
      resolved.detection_name = msg.detection_name;
    }
    else {
      resolved.detection_name = ''
    }

    if (msg.detection_score !== undefined) {
      resolved.detection_score = msg.detection_score;
    }
    else {
      resolved.detection_score = 0.0
    }

    if (msg.attribute_name !== undefined) {
      resolved.attribute_name = msg.attribute_name;
    }
    else {
      resolved.attribute_name = ''
    }

    return resolved;
    }
};

module.exports = DetectedObject;
