import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart'; // Ensure Firestore is imported
import 'package:newzoomclone/resources/firestore_methods.dart';

class HistoryMeetingScreen extends StatelessWidget {
  const HistoryMeetingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FireStoreMethods().meetingsHistory,
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }

        // Check if data is available
        if (!snapshot.hasData || snapshot.data!.docs.isEmpty) {
          return const Center(
            child: Text('No meeting history available'),
          );
        }

        // Cast snapshot data to QuerySnapshot
        final data = snapshot.data as QuerySnapshot;

        return ListView.builder(
          itemCount: data.docs.length,
          itemBuilder: (context, index) {
            final meeting = data.docs[index];
            return ListTile(
              title: Text("Room Name: ${meeting['meetingName']}"),
              subtitle: Text(
                "Created At: ${meeting['createdAt'].toDate().toString()}",
              ),

            );
          },
        );
      },
    );
  }
}
