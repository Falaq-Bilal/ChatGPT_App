import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class OptionButton extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const OptionButton({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 12),
        height: 80,
        width: 100,
        decoration: BoxDecoration(
          color: Colors.grey[800],
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(child: Icon(icon, size: 28, color: Colors.white)),
            SizedBox(height: 8),
            Text(label, style: Themes.regular(color: Themes.white)),
          ],
        ),
      ),
    );
  }
}
