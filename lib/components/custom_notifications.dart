import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';

class NotificationsSettings extends StatelessWidget {
  const NotificationsSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.black,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Notifications",
            style: Themes.semiBold(color: Themes.white),
          ),
          Divider(color: Colors.white24,), 
          const SizedBox(height: 16),

          ListTile(
            title: Text("Responses",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("Get notified when ChatGPT responds to requests that take time, like research or image generation",
                style: Themes.regular(color: Colors.grey, fontSize: 14)),
          ),
          Divider(color: Colors.white24),

          ListTile(
            title: Text("Tasks",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("Get notified when tasks you've created have updates",
                style: Themes.regular(color: Colors.grey, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
