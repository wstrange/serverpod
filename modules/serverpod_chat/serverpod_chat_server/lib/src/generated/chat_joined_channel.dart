/* AUTOMATICALLY GENERATED CODE DO NOT MODIFY */
/*   To generate run: "serverpod generate"    */

// ignore_for_file: library_private_types_in_public_api
// ignore_for_file: public_member_api_docs
// ignore_for_file: implementation_imports

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:serverpod/serverpod.dart' as _i1;
import 'protocol.dart' as _i2;
import 'package:serverpod_auth_server/module.dart' as _i3;

/// A message passed to a user when it joins a channel.
class ChatJoinedChannel extends _i1.SerializableEntity {
  ChatJoinedChannel({
    required this.channel,
    required this.initialMessageChunk,
    required this.lastReadMessageId,
    required this.userInfo,
  });

  factory ChatJoinedChannel.fromJson(
    Map<String, dynamic> jsonSerialization,
    _i1.SerializationManager serializationManager,
  ) {
    return ChatJoinedChannel(
      channel: serializationManager
          .deserialize<String>(jsonSerialization['channel']),
      initialMessageChunk:
          serializationManager.deserialize<_i2.ChatMessageChunk>(
              jsonSerialization['initialMessageChunk']),
      lastReadMessageId: serializationManager
          .deserialize<int>(jsonSerialization['lastReadMessageId']),
      userInfo: serializationManager
          .deserialize<_i3.UserInfo>(jsonSerialization['userInfo']),
    );
  }

  /// The channel the user joined.
  String channel;

  /// Initial chunk of chat messages from the channel the user joined.
  _i2.ChatMessageChunk initialMessageChunk;

  /// The id of the last read message.
  int lastReadMessageId;

  /// The user info of the user who joined the channel.
  _i3.UserInfo userInfo;

  @override
  Map<String, dynamic> toJson() {
    return {
      'channel': channel,
      'initialMessageChunk': initialMessageChunk,
      'lastReadMessageId': lastReadMessageId,
      'userInfo': userInfo,
    };
  }

  @override
  Map<String, dynamic> allToJson() {
    return {
      'channel': channel,
      'initialMessageChunk': initialMessageChunk,
      'lastReadMessageId': lastReadMessageId,
      'userInfo': userInfo,
    };
  }
}
