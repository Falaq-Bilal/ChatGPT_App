import 'dart:async';
import 'package:chatgpt_app/components/custom_blackbutton.dart';
import 'package:chatgpt_app/components/custom_whitebutton.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/login_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final List<Color> _bgColors = [
    Themes.pink,
    const Color.fromARGB(255, 243, 238, 192),
    Themes.teal,
    Themes.deepPurple,
    Themes.darkblue,
  ];

  // Texts
  final List<String> _texts = [
    "Let's Create",
    "Let's Discover",
    "Let's Brainstorm",
    "Let's Explore",
    "ChatGPT",
  ];

  // Text colors
  final List<Color> _textColors = [
    Themes.black,
    Themes.blue,
    const Color.fromARGB(255, 247, 212, 160),
    Themes.lightGreenAccent,
    Themes.yellow

  ];

  int _index = 0; // current index

  @override
  void initState() {
    super.initState();

    // Timer jo har 2 second me index change karega
    Timer.periodic(Duration(seconds: 2), (timer) {
      setState(() {
        _index = (_index + 1) % _texts.length;
      });
    });
  }



  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Stack(
        children: [
          // ===== Background + Changing Text =====
          AnimatedContainer(
            duration: Duration(seconds: 2),
            color: _bgColors[_index],
            child: Center(
              child: AnimatedSwitcher(
                duration: Duration(seconds: 1),
                child: Center(
                  child: Text(
                    _texts[_index],
                    key: ValueKey(_texts[_index]),
                    style: Themes.semiBold(
                      fontSize: 28,
                  
                      color: _textColors[_index], 
                    ),
                  ),
                ),
              ),
            ),
          ),
            Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
           padding: EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  WhiteButton(iconPath: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQgMhgB-GccVnB-ZJFuZg7HUsmdifnuxStqmA&s",iconSize: 18 ,text: "Continue with Google", onPressed: (){}),
                  SizedBox(height: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.grey[800],
                      foregroundColor: Themes.white,
                      shape: StadiumBorder(),
                      padding: EdgeInsets.symmetric(vertical: 15),
                    ),
                    child: Text("Sign up" , style: Themes.regular(color: Themes.white),),
                    onPressed: () {},
                  ),
                  SizedBox(height: 25),

                    BlackButton(text: "Log in", onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginScreen()));}),
                  
                ],
              ),
            ),
    )
      ])
    );
  }
}