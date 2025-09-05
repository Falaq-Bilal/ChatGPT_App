import 'package:chatgpt_app/view/welcome_screen.dart';
import 'package:flutter/material.dart';

main()
{
  runApp(ChatGPT());
}

class ChatGPT extends StatelessWidget {
  const ChatGPT({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
    debugShowCheckedModeBanner: false,
    home: WelcomeScreen(),
    );
  }
}
