import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:newzoomclone/resources/auth_methods.dart';

class JitsiMeetMethod{
final AuthMethods _authMethods = AuthMethods();
  void createMeeting({
    required String roomName,
    required bool isAudioMuted,
    required bool isVideoMuted,
    String username=''}) async
  {

    try {
      String name;
      if(username.isEmpty)
        {
          name = _authMethods.user.displayName!;
        }
      else
        {
          name = username;
        }

      var options = JitsiMeetingOptions(
        roomNameOrUrl: roomName,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        userDisplayName: name,
        userEmail: _authMethods.user.email,
        userAvatarUrl: _authMethods.user.photoURL

      );
      await JitsiMeetWrapper.joinMeeting(options: options);
    } catch (error) {
      print("Error: $error");
    }
}
}