import 'package:flutter/material.dart';

class CustomSizedbox extends StatelessWidget {
  final double? width;
  final double? height;
  final Widget? child;

  const CustomSizedbox({
    super.key,
    this.width = 20,
    this.height = 20,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? 0,   // default 0 agar null ho
      height: height ?? 0,
      child: child,
    );
  }
}
