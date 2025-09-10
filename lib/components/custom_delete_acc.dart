import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';


class CustomDeleteAcc extends StatelessWidget {
  const CustomDeleteAcc({super.key});

  void _showClearChatDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          backgroundColor: Themes.darkgrey,
          content: Text(
            "Deleting your account is permanent and cannot be undone. If you have an active subscription through the Google Play Store, you will need to cancel that separately. All your other data, including profile, conversations, and API usage, will be removed. You cannot reuse the same email or phone number for a new account. If you've been using ChatGPT with the API, this access will also be deleted." , style: Themes.regular(color: Themes.white)
          ),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context), 
              child: Text("Cancel", style: Themes.regular(color: Themes.white, )),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context); 
                ScaffoldMessenger.of(context).showSnackBar(
                   SnackBar(content: Text("Account Deleted!" , style: Themes.regular(color: Themes.white))),
                );
              },
              child: Text("Delete Account",
                style: Themes.semiBold(color: Themes.red),
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
          "Delete Account",
          style: Themes.textStyle(fontSize: 15, color: Themes.red),
          textAlign: TextAlign.left,
        ),
      ),
    );
  }
}
