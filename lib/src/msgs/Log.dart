// Auto-generated. Do not edit!

// (in-package rosgraph_msgs.msg)


import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';
import 'package:std_msgs/msgs.dart';

//-----------------------------------------------------------

class Log extends RosMessage<Log> {
  Header header;

  int level;

  String name;

  String msg;

  String file;

  String function;

  int line;

  List<String> topics;

  static Log empty$ = Log();
  Log({ 
    Header header,
    int level,
    String name,
    String msg,
    String file,
    String function,
    int line,
    List<String> topics,
  }):
  this.header = header ?? Header(),
  this.level = level ?? 0,
  this.name = name ?? '',
  this.msg = msg ?? '',
  this.file = file ?? '',
  this.function = function ?? '',
  this.line = line ?? 0,
  this.topics = topics ?? [];

  Log call({ 
    Header header,
    int level,
    String name,
    String msg,
    String file,
    String function,
    int line,
    List<String> topics,
  }) => Log(
  header: header,
  level: level,
  name: name,
  msg: msg,
  file: file,
  function: function,
  line: line,
  topics: topics,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Log
    // Serialize message field [header]
    header.serialize(writer);
    // Serialize message field [level]
    writer.writeUint8(level);
    // Serialize message field [name]
    writer.writeString(name);
    // Serialize message field [msg]
    writer.writeString(msg);
    // Serialize message field [file]
    writer.writeString(file);
    // Serialize message field [function]
    writer.writeString(function);
    // Serialize message field [line]
    writer.writeUint32(line);
    // Serialize message field [topics]
    writer.writeArray<String>(topics, (val) => writer.writeString(val), specArrayLen: null);
  }

  @override
  Log deserialize(ByteDataReader reader) {
    //deserializes a message object of type Log
    final data = Log();
    // Deserialize message field [header]
    data.header = Header.empty$.deserialize(reader);
    // Deserialize message field [level]
    data.level = reader.readUint8();
    // Deserialize message field [name]
    data.name = reader.readString();
    // Deserialize message field [msg]
    data.msg = reader.readString();
    // Deserialize message field [file]
    data.file = reader.readString();
    // Deserialize message field [function]
    data.function = reader.readString();
    // Deserialize message field [line]
    data.line = reader.readUint32();
    // Deserialize message field [topics]
    data.topics = reader.readArray<String>(() => reader.readString(), arrayLen: null);
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += header.getMessageSize();
    length += utf8.encode(name).length;
    length += utf8.encode(msg).length;
    length += utf8.encode(file).length;
    length += utf8.encode(function).length;
    topics.forEach((val) {
      length += 4 + utf8.encode(val).length;
    });
    return length + 25;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'rosgraph_msgs/Log';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'acffd30cd6b6de30f120938c17c593fb';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''##
## Severity level constants
##
byte DEBUG=1 #debug level
byte INFO=2  #general level
byte WARN=4  #warning level
byte ERROR=8 #error level
byte FATAL=16 #fatal/critical level
##
## Fields
##
Header header
byte level
string name # name of the node
string msg # message 
string file # file the message came from
string function # function the message came from
uint32 line # line the message came from
string[] topics # topic names that the node publishes

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

''';
  }

// Constants for message
  static const int DEBUG = 1;
  static const int INFO = 2;
  static const int WARN = 4;
  static const int ERROR = 8;
  static const int FATAL = 16;

}

