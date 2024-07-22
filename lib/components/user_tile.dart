import 'package:baate/services/chat/chat_services.dart';
import 'package:flutter/material.dart';

class UserTile extends StatelessWidget {
  final String text;
  final void Function()? onTap;
  final String userID;
  const UserTile({
    super.key,
    required this.text,
    this.onTap,
    required this.userID,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
          vertical: 5,
          horizontal: 25,
        ),
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.secondary,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // icon
            const Icon(Icons.person),
            const SizedBox(
              width: 20,
            ),
            // user name
            Text(text),
            const SizedBox(
              width: 20,
            ),
            InkWell(
              child: IconButton(
                onPressed: () {
                  ChatService().addToMyContacts(userID);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text("Added to Contacts"),
                    ),
                  );
                },
                icon: const Icon(Icons.person_add_alt),
              ),
            )
          ],
        ),
      ),
    );
  }
}
