
import 'package:chatgpt_app/components/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/personalized_screen.dart';
import 'package:flutter/material.dart';

class InstructionScreen extends StatelessWidget {
  const InstructionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => PersonalizedScreen()),
            );
          },
          icon: Icon(Icons.arrow_back, color: Themes.white,),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            Expanded(
              child: ListView(
                children: [
                  Text(
                    "Introducing",
                    style: Themes.regular(fontSize: 24, color: Themes.white),
                  ),
                  SizedBox(height: 5),
                  Text("Custom",
                      style: Themes.regular(fontSize: 24, color: Themes.white)),
                  SizedBox(height: 5),
                  Text(
                    "Instructions",
                    style: Themes.regular(fontSize: 24, color: Themes.white),
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Customize your interactions with ChatGPT by providing specific details and guidelines for your chats.",
                    style:
                        Themes.regular(fontSize: 15, color: Themes.darkgrey),
                  ),
                  SizedBox(height: 20),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.chat_bubble_outline , color: Themes.white,),
                    ),
                    title: Text("Active for new chats" , style: Themes.regular(color: Themes.white),),
                    subtitle: Text(
                        "Whenever you edit your custom instructions, they'll take effect in all new chats you create. Older conversations won't be updated" , style: Themes.regular(color: Themes.white),),
                  ),
                  ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Themes.black,
                      child: Icon(Icons.play_circle_outlined , color: Themes.white,),
                    ),
                    title: Text("Help improve our models" , style: Themes.regular(color: Themes.white),),
                    subtitle: Text(
                        "Your instructions will make our models better. Visit our Help Center to learn more about how your data will be used" , style: Themes.regular(color: Themes.white),),
                  ),
                ],
              ),
            ),
            WhiteButton(
              text: "Continue",
              onPressed: () {},
            ),
            SizedBox(height: 15), 
          ],
        ),
      ),
    );
  }
}
