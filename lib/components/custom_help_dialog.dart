import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


void openHelpDialog(BuildContext context) {
  showModalBottomSheet(
    context: context,
    backgroundColor: Colors.grey[900], // dark theme
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.vertical(top: Radius.circular(16)),
    ),
    builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min, // jitna content utna height
          children: [
            ListTile(
              leading: Icon(Icons.help_outline, color: Colors.white),
              title: Text("Help Center",
                  style: TextStyle(color: Colors.white)),
              onTap: ()  async{
                final Uri url = Uri.parse("https://help.openai.com/en/collections/5461535-android-app");
                await launchUrl(url);
                
              
              },
            ),
            ListTile(
              leading: Icon(Icons.article_outlined, color: Colors.white),
              title: Text("Release Notes",
                  style: TextStyle(color: Colors.white)),
              onTap: ()async {
                Navigator.pop(context);
                 final Uri url = Uri.parse("https://help.openai.com/en/articles/6825453-chatgpt-release-notes");
            await launchUrl(url); 
              },
            ),
            ListTile(
              leading: Icon(Icons.privacy_tip_outlined, color: Colors.white),
              title: Text("Terms & Policies",
                  style: TextStyle(color: Colors.white)),
              onTap: ()async {
                Navigator.pop(context);
                 final Uri url = Uri.parse("https://openai.com/en-GB/policies/terms-of-use/");
            await launchUrl(url); 
              },
            ),
            ListTile(
              leading: Icon(Icons.download_outlined, color: Colors.white),
              title: Text("Download Apps",
                  style: TextStyle(color: Colors.white)),
              onTap: () async{
                Navigator.pop(context);
                final Uri url = Uri.parse("https://chatgpt.com/download");
                await launchUrl(url);
              },
            ),
            ListTile(
              leading: Icon(Icons.keyboard_alt_outlined, color: Colors.white),
              title: Text("Keyboard Shortcuts",
                  style: TextStyle(color: Colors.white)),
              onTap: () {
                Navigator.pop(context);
              
              },
            ),
          ],
        ),
      );
    },
  );
}
