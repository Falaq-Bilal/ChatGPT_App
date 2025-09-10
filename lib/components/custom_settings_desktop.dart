import 'package:flutter/material.dart';

class CustomDialog {
  static void show({
    required BuildContext context,
    required String title,
    required String content,
    required VoidCallback onCancel,
    required VoidCallback onAccept,
  }) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(title),
          content: Text(content),
          actions: [
            TextButton(
              onPressed: onCancel,
              child: const Text("CANCEL"),
            ),
            TextButton(
              onPressed: onAccept,
              child: const Text("ACCEPT"),
            ),
          ],
        );
      },
    );
  }
}
