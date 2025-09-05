import 'package:chatgpt_app/componenets/custom_dialogcolor.dart';
import 'package:chatgpt_app/componenets/custom_languagedialog.dart';
import 'package:chatgpt_app/componenets/custom_popupmenu.dart';
import 'package:chatgpt_app/utils/themes.dart';
import 'package:chatgpt_app/view/instruction_screen.dart';
import 'package:chatgpt_app/view/memory_screen.dart';
import 'package:chatgpt_app/view/settings_screen.dart';
import 'package:flutter/material.dart';

class PersonalizedScreen extends StatelessWidget {
  const PersonalizedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Themes.black,
      appBar: AppBar(
        backgroundColor: Themes.black,
        scrolledUnderElevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SettingsScreen()),
            );
          },
          icon: Icon(Icons.arrow_back , color: Themes.white,),
        ),
        title: Text(
          "Personalization",
          style: TextStyle(fontSize: 20, color: Themes.white),
        ),
      ),

      body: ListView(
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.person_outline_outlined , color: Themes.white,),
            ),
            title: Text(
              "Memory",
              style: TextStyle(fontSize: 17, color: Themes.white ,),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MemoryScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.settings_applications_outlined , color: Themes.white,),
            ),
            title: Text(
              "Custom Instructions",
              style: TextStyle(fontSize: 17, color: Themes.white ,),
            ),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InstructionScreen()),
              );
            },
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.wb_sunny_outlined , color: Themes.white,),
            ),
            title: Text(
              "Color Scheme",
              style: TextStyle(fontSize: 17, color: Themes.white ,),
            ),
            subtitle: Text("System (Default)" , style: TextStyle(color: Themes.white),),
            onTap: () async {
              final result = await showDialog<String>(
                context: context,
                builder: (context) => ColorSchemeDialog(initialValue: "System"),
              );
            },
          ),
          CustomPopupmenu(),
          ListTile(
            leading: CircleAvatar(
              backgroundColor: Themes.black,
              child: Icon(Icons.language , color: Themes.white,),
            ),
            title: Text(
              "Language",
              style: TextStyle(fontSize: 17, color: Themes.white ,),
            ),
            subtitle: Text("English" , style: TextStyle(color: Themes.white),),
            onTap: () async {
              final result = await showDialog<String>(
                context: context,
                builder: (context) =>
                    const CustomLanguagedialog(initialValue: "English"),
              );
            },
          ),
        ],
      ),
    );
  }
}
