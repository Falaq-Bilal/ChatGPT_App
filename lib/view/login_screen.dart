import 'dart:js_interop';

import 'package:chatgpt_app/componenets/custom_blackbutton.dart';
import 'package:chatgpt_app/componenets/custom_sizedbox.dart';
import 'package:chatgpt_app/componenets/custom_whitebutton.dart' show WhiteButton;
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/home_screen.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: Themes.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Center(
              child: Text(
                "ChatGPT",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Themes.black,
                ),
              ),
            ),
            const SizedBox(height: 15),

            Center(
              child: Text(
                "Log in or sign up",
                style: TextStyle(
                  fontSize: 23,
                  fontWeight: FontWeight.bold,
                  color: Themes.black,
                ),
              ),
            ),
            const SizedBox(height: 15),

            Center(
              child: Text(
                "You'll get smarter responses and can upload files, images and more.",
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.normal,
                  color: Themes.darkgrey,
                ),
              ),
            ),

            const SizedBox(height: 25),

            // Email input
            TextField(
              controller: emailController,
              decoration: InputDecoration(
                label: const Text("Email address"),
                labelStyle: TextStyle(color: Themes.blue),
                border: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30)),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: Themes.blue, width: 2),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: const BorderRadius.all(Radius.circular(30)),
                  borderSide: BorderSide(color: Themes.blue, width: 2),
                ),
              ),
            ),

            const SizedBox(height: 20),

            // Continue button
            BlackButton(
              text: "Continue",
              onPressed: () {
                final email = emailController.text.trim();

                if (email.isNotEmpty) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(), 
                      // 👆 yahan tum apni HomeScreen widget replace karna
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("Please enter your email")),
                  );
                }
              },
            ),

            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(child: Divider(color: Themes.grey)),
                const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text("OR"),
                ),
                Expanded(child: Divider(color: Themes.grey)),
              ],
            ),

            const SizedBox(height: 20),

            WhiteButton(
              iconPath:
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcS60QdtjCrts2iWAX83BB_EgJiBLSCn1-9Nag&s",
              text: "Continue with Google",
              onPressed: () {},
            ),

            const SizedBox(height: 30),

            WhiteButton(
              iconPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSYzCaEK6fJrreWEFt_1__Eq863UwRj3Iyxp00WQh1pCKLfiYxAMnU52DFSGZpIv9UAmm0&usqp=CAU",
              text: "Continue with Microsoft Account",
              onPressed: () {},
            ),

            const SizedBox(height: 30),
            WhiteButton(
              iconPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSp3TbdX5pjOb7LN2i_vhys5NlEIqPL6Gv5bQ&s",
              text: "Continue with Apple",
              onPressed: () {},
            ),

            const SizedBox(height: 30),
            WhiteButton(
              iconPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcShqAxeyBm-uzzvCPPrRiEairl8BEO_ZJuy8A&s",
              text: "Continue with Phone",
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
