import 'package:flutter/material.dart';
import 'package:newzoomclone/utils/colors.dart';
class MeetingOptions extends StatelessWidget {
  final String text;
  final bool isMute;
  final Function(bool) onChange;
  const MeetingOptions({
    super.key,
    required this.text,
    required this.isMute,
    required this.onChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: secondaryBackgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(text,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.white
              ),
            ),
          ),
          Switch.adaptive(
              value: isMute,
              onChanged: onChange,
            activeColor: Colors.blueAccent,
            inactiveThumbColor: Colors.white,
            inactiveTrackColor: backgroundColor,
          )
        ],
      ),

    );
  }
}
