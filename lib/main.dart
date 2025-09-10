import 'package:chatgpt_app/view/chatgpt_desktop.dart';
import 'package:chatgpt_app/view/welcome_screen.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const ChatGPT());
}

class ChatGPT extends StatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 500) {
            return const WelcomeScreen();
          } else {
            return const ChatgptDesktop();
          }
        },
      ),
    );
  }
}
