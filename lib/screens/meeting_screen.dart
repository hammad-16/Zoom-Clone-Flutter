import 'dart:math';

import 'package:flutter/material.dart';
import 'package:jitsi_meet_wrapper/jitsi_meet_wrapper.dart';
import 'package:newzoomclone/resources/jitsi_meet_methods.dart';
import 'package:newzoomclone/widget/home_meeting_button.dart';

class MeetingScreen extends StatelessWidget {
   MeetingScreen({super.key});
  final JitsiMeetMethod _jitsiMeetMethod = JitsiMeetMethod();
createNewMeeting() async{
  var random = Random();
  String roomName = (random.nextInt(100000000 +10000000)).toString();
  _jitsiMeetMethod.createMeeting(roomName: roomName, isAudioMuted: true, isVideoMuted: true);
}
joinMeeting(BuildContext context)
{
  Navigator.pushNamed(context, '/video-call');
}
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            HomeMeetingButton(onPressed: createNewMeeting,
              icon: Icons.videocam,
              text: 'New Meeting',
            ),
            HomeMeetingButton(onPressed: ()=>joinMeeting(context),
              icon: Icons.add_box_rounded,
              text: 'Join Meeting',
            ),
            HomeMeetingButton(onPressed: (){},
              icon: Icons.calendar_today,
              text: 'Scheduling',
            ),
            HomeMeetingButton(onPressed: (){},
              icon: Icons.arrow_upward_rounded,
              text: 'Share Screen',
            )

          ],
        ),
        const Expanded(child:
        Center(
          child: Text(
            "Create/Join Meetings with just a click!"
            ,style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold
          ),
          )
          ,)
          ,)


      ],
    );
  }
}
