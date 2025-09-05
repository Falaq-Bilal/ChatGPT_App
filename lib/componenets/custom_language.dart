import 'package:chatgpt_app/utils/themes.dart';
import 'package:flutter/material.dart';

class LanguageTile extends StatefulWidget {
  const LanguageTile({super.key});

  @override
  State<LanguageTile> createState() => _LanguageTileState();
}

class _LanguageTileState extends State<LanguageTile> {
  String selectedLanguage = "Auto-Detect";

  final List<String> languages = [
    "Auto-Detect",
    "English",
    "Urdu",
    "Hindi",
    "Arabic",
  ];

  void _showDialog() {
    showDialog(
      context: context,
      builder: (context) {
        String temp = selectedLanguage;
        return AlertDialog(
          backgroundColor: Themes.darkgrey,
          title: const Text("Input Language"  , style: TextStyle(color: Themes.white)),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: languages.map((lang) {
              return RadioListTile(
                title: Text(lang  , style: TextStyle(color: Themes.white)),
                value: lang,
                groupValue: temp,
                activeColor: Themes.white,
                onChanged: (val) {
                  setState(() => temp = val!);
                },
              );
            }).toList(),
          ),
          actions: [
            TextButton(
              child: const Text("OK"  , style: TextStyle(color: Themes.white)),
              onPressed: () {
                setState(() => selectedLanguage = temp);
                Navigator.pop(context);
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const CircleAvatar(
        backgroundColor: Themes.black,
        child: Icon(Icons.mic , color: Themes.white,),
      ),
      title: const Text("Input Language"  , style: TextStyle(color: Themes.white)),
      subtitle: Text(selectedLanguage , style: TextStyle(color: Themes.white),),
      onTap: _showDialog,
    );
  }
}
