import 'package:baate/components/user_tile.dart';
import 'package:baate/services/auth/auth_service.dart';
import 'package:baate/services/chat/chat_services.dart';
import 'package:flutter/material.dart';

class MyContactsPage extends StatelessWidget {
  MyContactsPage({super.key});

  // chat & auth service
  final ChatService chatService = ChatService();
  final AuthService authService = AuthService();

  // Unblock box
  void _showDeleteBox(BuildContext context, String userId) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text("Delete Contact"),
        content: const Text("Are you sure you want to delete this user?"),
        actions: [
          // cancel button
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("Cancel"),
          ),

          // delete button
          TextButton(
            onPressed: () {
              chatService.deleteUser(userId);
              Navigator.pop(context);
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text("User Deleted"),
                ),
              );
            },
            child: const Text("Delete"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // get current users id
    String userId = authService.getCurrentUser()!.uid;

    // UI
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADDED USERS"),
        actions: const [],
      ),
      body: StreamBuilder<List<Map<String, dynamic>>>(
        stream: chatService.getAddedUserStream(userId),
        builder: (context, snapshot) {
          // errors
          if (snapshot.hasError) {
            return const Center(
              child: Text("Error loading..."),
            );
          }

          // loading
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }

          final myContacts = snapshot.data ?? [];

          // no users
          if (myContacts.isEmpty) {
            return const Center(
              child: Text("No added users"),
            );
          }

          // load complete
          return ListView.builder(
              itemCount: myContacts.length,
              itemBuilder: (context, index) {
                final user = myContacts[index];
                return UserTile(
                  text: user["email"],
                  userID: userId,
                  onTap: () => _showDeleteBox(context, user['uid']),
                );
              });
        },
      ),
    );
  }
}
