import 'package:flutter/material.dart';
import 'package:newzoomclone/resources/auth_methods.dart';
import 'package:newzoomclone/screens/history_meeting_screen.dart';
import 'package:newzoomclone/screens/meeting_screen.dart';
import 'package:newzoomclone/utils/colors.dart';
import 'package:newzoomclone/widget/custom_button.dart';
import 'package:newzoomclone/widget/home_meeting_button.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _page = 0;

  onPageChanged(int page)
  {
    setState(() {
      _page = page;
    });
  }
 List<Widget> pages = [
    MeetingScreen(),
   const HistoryMeetingScreen(),
   const Text("Contacts"),
   CustomButton(text: 'Log Out', onPressed: () => AuthMethods().signOut )

 ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: backgroundColor,
        title: const Text("Meet & Chat"),
        centerTitle: true,
      ),

      body: pages[_page]
      ,
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: onPageChanged,
          currentIndex: _page,
          type: BottomNavigationBarType.fixed,
          unselectedFontSize: 14 ,
          items: const [
            BottomNavigationBarItem(
                icon:
                Icon(Icons.comment_bank
                ),
                label: 'Meet and Char'
            ),
            BottomNavigationBarItem(
                icon:
                Icon(Icons.lock_clock
                ),
                label: 'Meetings'
            ),
            BottomNavigationBarItem(
                icon:
                Icon(Icons.person_outline
                ),
                label: 'Contacts'
            ),
            BottomNavigationBarItem(
                icon:
                Icon(Icons.settings_outlined,
                ),
                label: 'Settings'
            ),

          ]
      ),
    );
  }
}
