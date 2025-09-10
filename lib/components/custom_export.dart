import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';


class CustomExport extends StatelessWidget {
  const CustomExport({super.key});

  void _showClearChatDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Themes.darkgrey,
          content:  Text(
            "Your account details and converstaions will be included in the export, The data will be sent to your registered email in a downloadable file. The download link will expire 24 hours after you recieve it. Processing may take some time. You'll be notified when its'ready.", style: Themes.regular(color: Themes.white),
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), // dialog close
              child: Text("Cancel", style: Themes.semiBold(color: Themes.white)),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); // close dialog
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("Chats Exported!" , style: Themes.regular(color: Themes.white))),
                );
              },
              child: Text(
                "Export Data",
                style: Themes.semiBold(color: Themes.white),
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
          "Export Data",
          style: Themes.regular(fontSize: 15, color: Themes.white),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
