import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class BlackButton extends StatelessWidget {
  final String text;
  final VoidCallback onPressed;

  const BlackButton({
    super.key,
    required this.text,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.black,   // Black background
        foregroundColor: Colors.white,   // White text
        padding: const EdgeInsets.symmetric(
       horizontal: 10,// left/right padding
          vertical: 15,   // top/bottom padding
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
          side: BorderSide(width: 1 , color: Themes.darkgrey)
        ),
        elevation: 4,
      ),
      onPressed: onPressed,
      child: Text(
        text,
        style:  Themes.semiBold(fontSize: 16),
      ),
    );
  }
}
