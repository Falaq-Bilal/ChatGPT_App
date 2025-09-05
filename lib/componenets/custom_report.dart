import 'package:flutter/material.dart';

/// 🔹 Custom Report Dialog Widget
class ReportDialog extends StatelessWidget {
  const ReportDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = [
      "Violence & self-harm",
      "Sexual exploitation & abuse",
      "Child exploitation",
      "Bullying & harassment",
      "Spam, fraud & deception",
      "Privacy violation",
      "Intellectual property",
      "Age-inappropriate content",
      "Something else",
    ];

    return Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.all(12),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: Colors.grey[900],
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Report Conversation",
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              "Why are you reporting this conversation?",
              style: TextStyle(
                color: Colors.white70,
                fontSize: 15,
              ),
            ),
            SizedBox(height: 16),
            ...options.map(
              (item) => ReportOptionTile(
                title: item,
                onTap: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(content: Text("Selected: $item")),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/// 🔹 Reusable Tile Widget
class ReportOptionTile extends StatelessWidget {
  final String title;
  final VoidCallback onTap;

  const ReportOptionTile({
    Key? key,
    required this.title,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(12),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 4),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: TextStyle(color: Colors.white, fontSize: 15)),
            Icon(Icons.arrow_forward_ios, color: Colors.white, size: 16),
          ],
        ),
      ),
    );
  }
}
