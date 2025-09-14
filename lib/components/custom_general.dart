import 'package:flutter/material.dart';
import 'package:chatgpt_app/utils/themes.dart';

class GeneralSettings extends StatelessWidget {
  const GeneralSettings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.black,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "General Settings",
            style: Themes.semiBold( color: Themes.white),
          ),
          const SizedBox(height: 16),

          // Theme
          ListTile(
            leading: Icon(Icons.brightness_6, color: Themes.white),
            title: Text("Theme",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("Dark / Light",
                style: Themes.regular(color: Colors.white54, fontSize: 14)),
          ),
          Divider(color: Colors.white24),

          // Accent Color
          ListTile(
            leading: Icon(Icons.color_lens, color: Themes.white),
            title: Text("Accent Color",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("Blue",
                style: Themes.regular(color: Colors.white54, fontSize: 14)),
          ),
          Divider(color: Colors.white24),

          // Language
          ListTile(
            leading: Icon(Icons.language, color: Themes.white),
            title: Text("Language",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("English (US)",
                style: Themes.regular(color: Colors.white54, fontSize: 14)),
          ),
          Divider(color: Colors.white24),

          // Spoken Language
          ListTile(
            leading: Icon(Icons.record_voice_over, color: Themes.white),
            title: Text("Spoken Language",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("English",
                style: Themes.regular(color: Colors.white54, fontSize: 14)),
          ),
          Divider(color: Colors.white24),

          // Voice
          ListTile(
            leading: Icon(Icons.mic_none, color: Themes.white),
            title: Text("Voice",
                style: Themes.regular(color: Themes.white, fontSize: 16)),
            subtitle: Text("Default",
                style: Themes.regular(color: Colors.white54, fontSize: 14)),
          ),
        ],
      ),
    );
  }
}
