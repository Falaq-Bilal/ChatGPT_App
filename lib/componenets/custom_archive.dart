import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomArchive extends StatelessWidget {
  const CustomArchive({super.key});

  void _showArchiveDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Themes.darkgrey,
          content: const Text("All your chats will be archived." , style: TextStyle(color: Themes.white)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // dialog close
              child: const Text("Cancel" , style: TextStyle(color: Themes.white),),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
                // yahan apna archive logic likho
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("Chats Archived!" , style: TextStyle(color: Themes.white))),
                );
              },
              child: const Text("Archive Chat History" , style: TextStyle(color: Themes.white),),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return  GestureDetector(
        onTap: () => _showArchiveDialog(context),
        child:  ListTile(
          title: Text(
            "Archive Chat History",
            style: TextStyle(fontSize: 15, color: Themes.white),
            textAlign: TextAlign.left,
          ),
        ),
      );
  }
}
