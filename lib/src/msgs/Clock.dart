// Auto-generated. Do not edit!

// Updated: Tue Nov 10 15:46:01 2020

// (in-package rosgraph_msgs.msg)


import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros/msg_utils.dart';

//-----------------------------------------------------------

class Clock extends RosMessage<Clock> {
  RosTime clock;

  static Clock $prototype = Clock();
  Clock({ 
    RosTime clock,
  }):
  this.clock = clock ?? RosTime(secs: 0, nsecs: 0);

  Clock call({ 
    RosTime clock,
  }) => Clock(
  clock: clock,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type Clock
    // Serialize message field [clock]
    writer.writeTime(clock);
  }

  @override
  Clock deserialize(ByteDataReader reader) {
    //deserializes a message object of type Clock
    final data = Clock();
    // Deserialize message field [clock]
    data.clock = reader.readTime();
    return data;
  }

  int getMessageSize() {
    return 8;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'rosgraph_msgs/Clock';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return 'a9c97c1d230cfc112e270351a944ee47';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# roslib/Clock is used for publishing simulated time in ROS. 
# This message simply communicates the current time.
# For more information, see http://www.ros.org/wiki/Clock
time clock

''';
  }

}

