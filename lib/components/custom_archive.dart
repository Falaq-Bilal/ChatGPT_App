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
          content:  Text("All your chats will be archived." , style: Themes.regular(color: Themes.white)),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // dialog close
              child:  Text("Cancel" , style: Themes.regular(color: Themes.white),),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
                // yahan apna archive logic likho
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("Chats Archived!" , style: Themes.regular(color: Themes.white))),
                );
              },
              child:  Text("Archive Chat History" , style: Themes.regular(color: Themes.white),),
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
            style: Themes.regular(fontSize: 15, color: Themes.white),
            textAlign: TextAlign.left,
          ),
        ),
      );
  }
}
