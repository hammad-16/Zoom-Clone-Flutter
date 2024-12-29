import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:newzoomclone/resources/auth_methods.dart';
import 'package:newzoomclone/resources/jitsi_meet_methods.dart';
import 'package:newzoomclone/utils/colors.dart';
import 'package:newzoomclone/widget/meeting_options.dart';

class VideoCallScreen extends StatefulWidget {
  const VideoCallScreen({super.key});

  @override
  State<VideoCallScreen> createState() => _VideoCallScreenState();
}

class _VideoCallScreenState extends State<VideoCallScreen> {
  final AuthMethods _authMethods = AuthMethods();
  late TextEditingController meetingIdController;
  late TextEditingController nameController;
  bool isAudioMuted = true;
  bool isVideoMuted = true;
  final JitsiMeetMethod _jitsiMeetMethod = JitsiMeetMethod();
  @override
  void initState() {

    meetingIdController = TextEditingController();
    nameController = TextEditingController(text: _authMethods.user.displayName);
    super.initState();

  }
  @override
  void dispose() {
    super.dispose();
    meetingIdController.dispose();
    nameController.dispose();

  }

  _joinMeeting()
  {
    _jitsiMeetMethod.createMeeting(
      roomName: meetingIdController.text,
        isAudioMuted: isAudioMuted,
        isVideoMuted: isVideoMuted,
        username: nameController.text



    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
          backgroundColor: backgroundColor,
        title: const Text('Join a Meeting',
        style: TextStyle(
            fontSize: 18,
          color: Colors.white
        ),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          const SizedBox(height: 60,),
          TextField(
            controller: meetingIdController,
            maxLines: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            style: const TextStyle(color: Colors.white),
            decoration: const InputDecoration(
              fillColor: secondaryBackgroundColor,
              filled: true,
              hintText: 'Room ID',
              hintStyle: TextStyle(color: Colors.white),
              contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none

            ),
          ),
          const SizedBox(height: 10,),
          TextField(
            controller: nameController,
            style: const TextStyle(color: Colors.white),
            maxLines: 1,
            textAlign: TextAlign.center,
            keyboardType: TextInputType.number,
            decoration: const InputDecoration(
              fillColor: secondaryBackgroundColor,
              filled: true,
              hintText: 'Name',
              contentPadding: EdgeInsets.fromLTRB(16, 8, 0, 0),
                border: InputBorder.none,
                focusedBorder: InputBorder.none,
                enabledBorder: InputBorder.none

            ),
          ),
          const SizedBox(height: 20,),
          InkWell(
            onTap: _joinMeeting,
            child: const Padding(
                padding: EdgeInsets.all(8),
              child: Text('Join',
                  style: TextStyle(
                    fontSize: 16,
                  )
              ),
            )
          ),
          const SizedBox(height: 20,),
          MeetingOptions(text: 'Mute Audio', isMute: isAudioMuted, onChange: onAudioMuted,),
          MeetingOptions(text: 'Turn Off My Video', isMute: isVideoMuted, onChange: onVideoMuted,),

        ],
      ),
    );
  }

  onAudioMuted(bool? val)
  {
    setState(() {
      isAudioMuted = val!;
    });

  }
  onVideoMuted(bool? val)
  {
    setState(() {
      isVideoMuted = val!;
    });
  }
}
