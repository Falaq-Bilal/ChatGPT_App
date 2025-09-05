import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class WhiteButton extends StatelessWidget {
  final String text;
  final String? iconPath; 
  // asset ya network dono ho sakta
  final double iconSize ;
  final VoidCallback onPressed;

  const WhiteButton({
    Key? key,
    required this.text,
    this.iconPath,
    this.iconSize = 24, 
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? iconWidget;

    if (iconPath != null) {
      if (iconPath!.startsWith("http")) {
        // 👈 agar URL hai to NetworkImage
        iconWidget = Image.network(iconPath!, height: 20, width: 20);
      } else {
        // 👈 warna AssetImage
        iconWidget = Image.asset(iconPath!, height: 24, width: 24);
      }
    }

    return  SizedBox(
  width: double.infinity,  // 👈 full width
  child: ElevatedButton(
    style: ElevatedButton.styleFrom(
      backgroundColor: Themes.white,
      foregroundColor: Themes.black,
      padding: EdgeInsets.symmetric(vertical: 14), // height barhane ke liye
      shape: RoundedRectangleBorder(
        side: BorderSide(width: 1, color: Themes.grey),
        borderRadius: BorderRadius.circular(30),
      ),
    ),
    onPressed: onPressed,
    child: Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (iconWidget != null) ...[
          iconWidget,
          SizedBox(width: 10),
        ],
        Flexible( // 👈 text overflow handle karega
          child: Text(
            text,
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.normal,
            ),
            overflow: TextOverflow.ellipsis, // agar text lamba ho
          ),
        ),
      ],
    ),
  ),
);
  }
}
