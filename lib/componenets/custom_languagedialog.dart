import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class CustomLanguagedialog extends StatefulWidget {
  final String initialValue;
  const CustomLanguagedialog({super.key, this.initialValue = "System"});

  @override
  State<CustomLanguagedialog> createState() => _LanguageDialogState();
}

class _LanguageDialogState extends State<CustomLanguagedialog> {
  late String selected;

  final List<String> languages = [
    "System (Default)" ,
    "English",
    "Urdu",
    "Arabic",
    "French",
    "Spanish",
    "German",
    "Hindi",
    "Chinese",
    "Japanese",
  ];

  @override
  void initState() {
    super.initState();
    selected = widget.initialValue;
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text("App Language" , style: TextStyle(color: Themes.white),),
      backgroundColor: Themes.darkgrey,
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: languages.map((lang) {
            return RadioListTile<String>(
              title: Text(lang  , style: TextStyle(color: Themes.white),),
              value: lang,
              groupValue: selected,
              activeColor: Themes.white,
          
              onChanged: (value) {
                setState(() {
                  selected = value!;
                });
              },
            );
          }).toList(),
        ),
      ),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pop(context, selected); 
              },
              child: const Text("OK" ,  style: TextStyle(color: Themes.white),)
            ),
          ],
        ),
      ],
    );
  }
}
