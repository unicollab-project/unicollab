// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:zego_uikit_prebuilt_call/zego_uikit_prebuilt_call.dart';

class WebRTC extends StatefulWidget {
  const WebRTC({
    super.key,
    this.width,
    this.height,
    required this.callID,
    required this.userID,
    required this.userName,
  });

  final double? width;
  final double? height;
  final String callID;
  final String userID;
  final String userName;

  @override
  State<WebRTC> createState() => _WebRTCState();
}

class _WebRTCState extends State<WebRTC> {
  @override
  Widget build(BuildContext context) {
    return ZegoUIKitPrebuiltCall(
      appID:
          189797986, // Fill in the appID that you get from ZEGOCLOUD Admin Console.
      appSign:
          "684de1baaa29a68ad61250047c4691ee830df3366516cd4b2b522a6bdf82933c", // Fill in the appSign that you get from ZEGOCLOUD Admin Console.
      userID: widget.userID,
      userName: widget.userName,
      callID: widget.callID,
      // You can also use groupVideo/groupVoice/oneOnOneVoice to make more types of calls.
      config: ZegoUIKitPrebuiltCallConfig.groupVideoCall(),
      ZegoUIKitPrebuiltCallConfig.groupVoiceCall(),
    );
  }
}
