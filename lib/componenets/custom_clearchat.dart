import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';


class CustomClearchat extends StatelessWidget {
  const CustomClearchat({super.key});

  void _showClearChatDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Themes.darkgrey,
          content: const Text(
            "All your chats will be cleared from history. " 
            "This cannot be undone. Any created memories will be retained.",  style: TextStyle(color: Themes.white)
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // dialog close
              child: Text("Cancel", style: TextStyle(color: Themes.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Chats Cleared!"  , style: TextStyle(color: Themes.white))),
                );
              },
              child: Text(
                "Clear Chat History",
                style: TextStyle(color: Themes.red),
              ),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _showClearChatDialog(context),
      child: ListTile(
        title: Text(
          "Clear Chat History",
          style: TextStyle(fontSize: 15, color: Themes.red),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
