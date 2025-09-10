import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class BottomSheetTile extends StatelessWidget {
  final IconData icon;
  final String label;
  final VoidCallback onTap;

  const BottomSheetTile({
    Key? key,
    required this.icon,
    required this.label,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(icon, color: Colors.white),
      title: Text(
        label,
        style: Themes.regular(color: Colors.white),
      ),
      onTap: onTap,
    );
  }
}
