import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
import 'package:flutter/material.dart';
import 'package:share_plus/share_plus.dart';
import 'dart:html' as html;

import 'package:chatgpt_app/components/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/home_screen.dart';

class ShareScreen extends StatelessWidget {
  final String link = "https://chatgpt.com/share/68cc1205-c780-8004-ab10-b27e449ccd82"; // generated link

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(
              context,
              
            );
          },
          icon: Icon(Icons.arrow_back, color: Themes.white),
        ),
        title: Text(
          "Share link to chat",
          style: Themes.regular(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Messages sent or received after sharing your link won't be shared. Anyone with the URL will be able to view your shared chat.",
              style: Themes.regular(color: Themes.white, fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              "Recipients won’t be able to view your custom profiles.",
              style: Themes.regular(color: Themes.white, fontSize: 14),
            ),
            const SizedBox(height: 20),
            Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.grey[900],
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      padding: const EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.grey[800],
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Text(
                        "What is flutter?",
                        style: Themes.regular(color: Colors.white),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "Flutter is an open-source UI (User Interface) framework developed by Google for building natively compiled applications...",
                    style: Themes.regular(color: Colors.white, fontSize: 14),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    "What is Flutter\nAnonymous · 2 Sept 2025 3:59:48 pm",
                    style: Themes.regular(color: Colors.white, fontSize: 12),
                  ),
                ],
              ),
            ),
            const Spacer(),
            WhiteButton(
              iconPath:
                  "https://tse3.mm.bing.net/th/id/OIP.Smlk5CvO1xoHxA1d2FQxJQHaHa?pid=Api&P=0&h=220",
              text: "Share Link",
              onPressed: () async {
                if (kIsWeb) {
                  // 🌐 Web case
                  if (html.window.navigator.share != null) {
                    try {
                      await html.window.navigator.share({
                        "title": "ChatGPT Conversation",
                        "text": "Check out this chat",
                        "url": link,
                      });
                    } catch (e) {
                      print("Share cancelled or failed: $e");
                    }
                  } else {
                    // fallback dialog
                    showDialog(
                      context: context,
                      builder: (_) => AlertDialog(
                        backgroundColor: Colors.grey[900],
                        title: const Text("Share this chat",
                            style: TextStyle(color: Colors.white)),
                        content: SelectableText(
                          link,
                          style: const TextStyle(color: Colors.white),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.pop(context),
                            child: const Text("Close",
                                style: TextStyle(color: Colors.white)),
                          ),
                        ],
                      ),
                    );
                  }
                } else {
                  // 📱 Android / iOS native
                  Share.share(link, subject: "ChatGPT Conversation");
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}
