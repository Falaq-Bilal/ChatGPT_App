import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class ColorSchemeDialog extends StatefulWidget {
  final String initialValue;

  const ColorSchemeDialog({Key? key, this.initialValue = "System"})
      : super(key: key);

  @override
  State<ColorSchemeDialog> createState() => _ColorSchemeDialogState();
}

class _ColorSchemeDialogState extends State<ColorSchemeDialog> {
  late String selectedScheme;

  @override
  void initState() {
    super.initState();
    selectedScheme = widget.initialValue; 
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Themes.darkgrey1,
      title: Text("Color Scheme" , style: Themes.regular(color: Themes.white),),
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          RadioListTile(
            title: Text("System (Default)" , style: Themes.regular(color: Themes.white),),
            value: "System",
            groupValue: selectedScheme,
            activeColor: Themes.white,
            onChanged: (value) {
              setState(() => selectedScheme = value!);
            },
          ),
          RadioListTile<String>(
            title: Text("Light" , style: Themes.regular(color: Themes.white),),
            value: "Light",
            groupValue: selectedScheme,
            activeColor: Themes.white,
            onChanged: (value) {
              setState(() => selectedScheme = value!);
            },
          ),
          RadioListTile<String>(
            title: Text("Dark" , style: Themes.regular(color: Themes.white),),
            value: "Dark",
            groupValue: selectedScheme,
            activeColor: Themes.white,
            onChanged: (value) {
              setState(() => selectedScheme = value!);
            },
          ),
        ],
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, selectedScheme); 
              },
              child: Text("OK", style: Themes.regular(color: Themes.white),),
            ),
          ],
        )
      ],
    );
  }
}
