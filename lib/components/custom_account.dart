import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomAccount extends StatelessWidget {
  const CustomAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Themes.black,
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Text("Account" , style: Themes.regular(fontSize: 17 , color: Themes.white),),
          Divider(color: Colors.white24,)
        ],
      ),
    );
  }
}