// Auto-generated. Do not edit!

// Updated: Thu Mar 18 08:38:00 2021

// (in-package rosgraph_msgs.msg)


// ignore_for_file: unused_import, overridden_fields
import 'dart:convert';
import 'package:buffer/buffer.dart';
import 'package:dartros_msgutils/msg_utils.dart';

//-----------------------------------------------------------

class TopicStatistics extends RosMessage<TopicStatistics> {
  String topic;

  String node_pub;

  String node_sub;

  RosTime window_start;

  RosTime window_stop;

  int delivered_msgs;

  int dropped_msgs;

  int traffic;

  RosTime period_mean;

  RosTime period_stddev;

  RosTime period_max;

  RosTime stamp_age_mean;

  RosTime stamp_age_stddev;

  RosTime stamp_age_max;

  static TopicStatistics $prototype = TopicStatistics();
  TopicStatistics({ 
    String? topic,
    String? node_pub,
    String? node_sub,
    RosTime? window_start,
    RosTime? window_stop,
    int? delivered_msgs,
    int? dropped_msgs,
    int? traffic,
    RosTime? period_mean,
    RosTime? period_stddev,
    RosTime? period_max,
    RosTime? stamp_age_mean,
    RosTime? stamp_age_stddev,
    RosTime? stamp_age_max,
  }):
  this.topic = topic ?? '',
  this.node_pub = node_pub ?? '',
  this.node_sub = node_sub ?? '',
  this.window_start = window_start ?? RosTime(secs: 0, nsecs: 0),
  this.window_stop = window_stop ?? RosTime(secs: 0, nsecs: 0),
  this.delivered_msgs = delivered_msgs ?? 0,
  this.dropped_msgs = dropped_msgs ?? 0,
  this.traffic = traffic ?? 0,
  this.period_mean = period_mean ?? RosTime(secs: 0, nsecs: 0),
  this.period_stddev = period_stddev ?? RosTime(secs: 0, nsecs: 0),
  this.period_max = period_max ?? RosTime(secs: 0, nsecs: 0),
  this.stamp_age_mean = stamp_age_mean ?? RosTime(secs: 0, nsecs: 0),
  this.stamp_age_stddev = stamp_age_stddev ?? RosTime(secs: 0, nsecs: 0),
  this.stamp_age_max = stamp_age_max ?? RosTime(secs: 0, nsecs: 0);

  @override
  TopicStatistics call({ 
    String? topic,
    String? node_pub,
    String? node_sub,
    RosTime? window_start,
    RosTime? window_stop,
    int? delivered_msgs,
    int? dropped_msgs,
    int? traffic,
    RosTime? period_mean,
    RosTime? period_stddev,
    RosTime? period_max,
    RosTime? stamp_age_mean,
    RosTime? stamp_age_stddev,
    RosTime? stamp_age_max,
  }) => TopicStatistics(
  topic: topic,
  node_pub: node_pub,
  node_sub: node_sub,
  window_start: window_start,
  window_stop: window_stop,
  delivered_msgs: delivered_msgs,
  dropped_msgs: dropped_msgs,
  traffic: traffic,
  period_mean: period_mean,
  period_stddev: period_stddev,
  period_max: period_max,
  stamp_age_mean: stamp_age_mean,
  stamp_age_stddev: stamp_age_stddev,
  stamp_age_max: stamp_age_max,
  );

  void serialize(ByteDataWriter writer) {
    // Serializes a message object of type TopicStatistics
    // Serialize message field [topic]
    writer.writeString(topic);
    // Serialize message field [node_pub]
    writer.writeString(node_pub);
    // Serialize message field [node_sub]
    writer.writeString(node_sub);
    // Serialize message field [window_start]
    writer.writeTime(window_start);
    // Serialize message field [window_stop]
    writer.writeTime(window_stop);
    // Serialize message field [delivered_msgs]
    writer.writeInt32(delivered_msgs);
    // Serialize message field [dropped_msgs]
    writer.writeInt32(dropped_msgs);
    // Serialize message field [traffic]
    writer.writeInt32(traffic);
    // Serialize message field [period_mean]
    writer.writeTime(period_mean);
    // Serialize message field [period_stddev]
    writer.writeTime(period_stddev);
    // Serialize message field [period_max]
    writer.writeTime(period_max);
    // Serialize message field [stamp_age_mean]
    writer.writeTime(stamp_age_mean);
    // Serialize message field [stamp_age_stddev]
    writer.writeTime(stamp_age_stddev);
    // Serialize message field [stamp_age_max]
    writer.writeTime(stamp_age_max);
  }

  @override
  TopicStatistics deserialize(ByteDataReader reader) {
    //deserializes a message object of type TopicStatistics
    final data = TopicStatistics();
    // Deserialize message field [topic]
    data.topic = reader.readString();
    // Deserialize message field [node_pub]
    data.node_pub = reader.readString();
    // Deserialize message field [node_sub]
    data.node_sub = reader.readString();
    // Deserialize message field [window_start]
    data.window_start = reader.readTime();
    // Deserialize message field [window_stop]
    data.window_stop = reader.readTime();
    // Deserialize message field [delivered_msgs]
    data.delivered_msgs = reader.readInt32();
    // Deserialize message field [dropped_msgs]
    data.dropped_msgs = reader.readInt32();
    // Deserialize message field [traffic]
    data.traffic = reader.readInt32();
    // Deserialize message field [period_mean]
    data.period_mean = reader.readTime();
    // Deserialize message field [period_stddev]
    data.period_stddev = reader.readTime();
    // Deserialize message field [period_max]
    data.period_max = reader.readTime();
    // Deserialize message field [stamp_age_mean]
    data.stamp_age_mean = reader.readTime();
    // Deserialize message field [stamp_age_stddev]
    data.stamp_age_stddev = reader.readTime();
    // Deserialize message field [stamp_age_max]
    data.stamp_age_max = reader.readTime();
    return data;
  }

  int getMessageSize() {
    var length = 0;
    length += utf8.encode(topic).length;
    length += utf8.encode(node_pub).length;
    length += utf8.encode(node_sub).length;
    return length + 88;
  }

  @override
  String get fullType {
    // Returns string type for a message object
    return 'rosgraph_msgs/TopicStatistics';
  }

  @override
  String get md5sum {
    //Returns md5sum for a message object
    return '10152ed868c5097a5e2e4a89d7daa710';
  }

  @override
  String get messageDefinition {
    // Returns full string definition for message
    return '''# name of the topic
string topic

# node id of the publisher
string node_pub

# node id of the subscriber
string node_sub

# the statistics apply to this time window
time window_start
time window_stop

# number of messages delivered during the window
int32 delivered_msgs
# numbers of messages dropped during the window
int32 dropped_msgs

# traffic during the window, in bytes
int32 traffic

# mean/stddev/max period between two messages
duration period_mean
duration period_stddev
duration period_max

# mean/stddev/max age of the message based on the
# timestamp in the message header. In case the
# message does not have a header, it will be 0.
duration stamp_age_mean
duration stamp_age_stddev
duration stamp_age_max

''';
  }

}

