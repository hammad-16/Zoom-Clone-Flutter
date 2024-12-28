import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:newzoomclone/resources/auth_methods.dart';

class JitsiMeetMethod{
final AuthMethods _authMethods = AuthMethods();
  void createMeeting(String roomName, bool isAudioMuted,bool isVideoMuted) async
  {
    try {
      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        userDisplayName: _authMethods.user.displayName,
        userEmail: _authMethods.user.email,
        userAvatarUrl: _authMethods.user.photoURL

      );
      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      print("Error: $error");
    }
}
}